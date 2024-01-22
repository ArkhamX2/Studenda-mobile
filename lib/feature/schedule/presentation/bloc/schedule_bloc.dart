// ignore_for_file: void_checks

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:studenda_mobile/core/utils/get_current_academic_year.dart';
import 'package:studenda_mobile/core/utils/get_current_week_days.dart';
import 'package:studenda_mobile/core/utils/map_subject_model_to_day_scehdule_list.dart';
import 'package:studenda_mobile/feature/schedule/data/models/schedule_request_model.dart';
import 'package:studenda_mobile/feature/schedule/data/models/subject_model.dart';
import 'package:studenda_mobile/feature/schedule/domain/entities/schedule_entity.dart';
import 'package:studenda_mobile/feature/schedule/domain/entities/week_type_entity.dart';
import 'package:studenda_mobile/feature/schedule/domain/usecases/get_day_position.dart';
import 'package:studenda_mobile/feature/schedule/domain/usecases/get_discipline_list.dart';
import 'package:studenda_mobile/feature/schedule/domain/usecases/get_schedule.dart';
import 'package:studenda_mobile/feature/schedule/domain/usecases/get_subject_position.dart';
import 'package:studenda_mobile/feature/schedule/domain/usecases/get_subject_type_list.dart';
import 'package:studenda_mobile/feature/schedule/domain/usecases/get_teacher_list.dart';
import 'package:studenda_mobile/feature/schedule/domain/usecases/get_week_type.dart';

part 'schedule_bloc.freezed.dart';
part 'schedule_event.dart';
part 'schedule_state.dart';

class ScheduleBloc extends Bloc<ScheduleEvent, ScheduleState> {
  final GetSchedule getSchedule;
  final GetWeekType getWeekType;
  final GetDisciplineList getDisciplineList;
  final GetTeacherList getTeacherList;
  final GetDayPositionList getDayPosition;
  final GetSubjectPositionList getSubjectPosition;
  final GetSubjectTypeList getSubjectType;
  WeekTypeEntity? weekType;

  ScheduleBloc({
    required this.getDisciplineList,
    required this.getTeacherList,
    required this.getSchedule,
    required this.getWeekType,
    required this.getDayPosition,
    required this.getSubjectPosition,
    required this.getSubjectType,
  }) : super(const _Initial()) {
    on<_ChangeWeekType>((event, emit) {
      weekType = weekType?.index == 1
          ? WeekTypeEntity(id: weekType!.id + 1, name: weekType!.name, index: 2)
          : WeekTypeEntity(
              id: weekType!.id - 1,
              name: weekType!.name,
              index: 1,
            );
    });

    on<_Load>((event, emit) async {
      emit(const ScheduleState.loading());
      await getWeekType.call(() {}).then(
            (value) => value.fold(
              (error) => emit(ScheduleState.fail(error.message)),
              (succededWeekType) async {
                weekType = WeekTypeEntity(
                  id: succededWeekType.id,
                  name: succededWeekType.name,
                  index: succededWeekType.index,
                );
                await getSchedule
                    .call(
                      ScheduleRequestModel(
                        groupId: event.groupId,
                        weekTypeId: succededWeekType.id,
                        academicYear: getCurrentAcademicYear(),
                      ),
                    )
                    .then(
                      (value) => value.fold(
                        (error) => emit(ScheduleState.fail(error.message)),
                        (succededSubjectList) async {
                          await getDisciplineList
                              .call(
                                _getDisciplineIds(
                                  succededSubjectList,
                                ),
                              )
                              .then(
                                (value) => value.fold(
                                  (error) => emit(
                                    ScheduleState.fail(
                                      error.message,
                                    ),
                                  ),
                                  (succededDisciplineList) async {
                                    await getTeacherList
                                        .call(
                                          _getTeacherIds(succededSubjectList),
                                        )
                                        .then(
                                          (value) => value.fold(
                                            (error) => emit(
                                              ScheduleState.fail(
                                                error.message,
                                              ),
                                            ),
                                            (succededTeacherList) async {
                                              await getSubjectType
                                                  .call(
                                                    _getSubjectTypeIds(
                                                        succededSubjectList,),
                                                  )
                                                  .then(
                                                    (value) => value.fold(
                                                      (error) => emit(
                                                        ScheduleState.fail(
                                                          error.message,
                                                        ),
                                                      ),
                                                      (succededSubjectTypeList) async {
                                                        await getDayPosition
                                                            .call(
                                                              () {},
                                                            )
                                                            .then(
                                                              (value) =>
                                                                  value.fold(
                                                                (error) => emit(
                                                                  ScheduleState
                                                                      .fail(
                                                                    error
                                                                        .message,
                                                                  ),
                                                                ),
                                                                (succededDayPositionList) async {
                                                                  await getSubjectPosition
                                                                      .call(
                                                                        () {},
                                                                      )
                                                                      .then(
                                                                        (value) =>
                                                                            value.fold(
                                                                          (error) =>
                                                                              emit(
                                                                            ScheduleState.fail(
                                                                              error.message,
                                                                            ),
                                                                          ),
                                                                          (succededSubjectPositionList) =>
                                                                              emit(
                                                                            ScheduleState.success(
                                                                              ScheduleEntity(
                                                                                schedule: mapSubjectModelToDayScehduleList(
                                                                                  succededSubjectList,
                                                                                  succededDisciplineList,
                                                                                  succededTeacherList,
                                                                                  succededDayPositionList,
                                                                                  succededSubjectPositionList,
                                                                                  succededSubjectTypeList,
                                                                                ),
                                                                                weekType: WeekTypeEntity(
                                                                                  id: succededWeekType.id,
                                                                                  name: succededWeekType.name,
                                                                                  index: succededWeekType.index,
                                                                                ),
                                                                                weekDays: getCurrentWeekDays(),
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      );
                                                                },
                                                              ),
                                                            );
                                                      },
                                                    ),
                                                  );
                                            },
                                          ),
                                        );
                                  },
                                ),
                              );
                        },
                      ),
                    );
              },
            ),
          );
    });
  }
}

List<int> _getSubjectTypeIds(List<SubjectModel> succededSubjectList) {
  final List<int> ids = [];

  for (final element in succededSubjectList) {
    ids.add(element.userId);
  }

  return ids;
}

List<int> _getTeacherIds(List<SubjectModel> succededSubjectList) {
  final List<int> ids = [];

  for (final element in succededSubjectList) {
    ids.add(element.userId);
  }

  return ids;
}

List<int> _getDisciplineIds(List<SubjectModel> succededSubjectList) {
  final List<int> ids = [];

  for (final element in succededSubjectList) {
    ids.add(element.disciplineId);
  }

  return ids;
}
