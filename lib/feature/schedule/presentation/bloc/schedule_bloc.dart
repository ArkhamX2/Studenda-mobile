import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:studenda_mobile/core/common/data/model/day_position_model.dart';
import 'package:studenda_mobile/core/common/data/model/subject_position_model.dart';
import 'package:studenda_mobile/core/utils/get_current_academic_year.dart';
import 'package:studenda_mobile/core/utils/get_current_week_days.dart';
import 'package:studenda_mobile/core/utils/map_subject_model_to_day_scehdule_list.dart';
import 'package:studenda_mobile/feature/schedule/data/models/schedule_request_model.dart';
import 'package:studenda_mobile/feature/schedule/data/models/subject_model.dart';
import 'package:studenda_mobile/feature/schedule/domain/entities/schedule_entity.dart';
import 'package:studenda_mobile/feature/schedule/domain/entities/week_type_entity.dart';
import 'package:studenda_mobile/feature/schedule/domain/usecases/get_discipline_list.dart';
import 'package:studenda_mobile/feature/schedule/domain/usecases/get_schedule.dart';
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
  WeekTypeEntity? weekType;

  ScheduleBloc({
    required this.getDisciplineList,
    required this.getTeacherList,
    required this.getSchedule,
    required this.getWeekType,
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
      // ignore: void_checks
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
                                            (succededTeacherList) => emit(
                                              ScheduleState.success(
                                                ScheduleEntity(
                                                  schedule:
                                                      mapSubjectModelToDayScehduleList(
                                                    succededSubjectList,
                                                    succededDisciplineList,
                                                    succededTeacherList,
                                                    event.dayPositionList,
                                                    event.subjectPositionList,
                                                  ),
                                                  weekType: WeekTypeEntity(
                                                    id: succededWeekType.id,
                                                    name: succededWeekType.name,
                                                    index:
                                                        succededWeekType.index,
                                                  ),
                                                  weekDays:
                                                      getCurrentWeekDays(),
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
    });
  }
}

List<int> _getTeacherIds(List<SubjectModel> r) {
  final List<int> ids = [];

  for (final element in r) {
    ids.add(element.userId);
  }

  return ids;
}

List<int> _getDisciplineIds(List<SubjectModel> r) {
  final List<int> ids = [];

  for (final element in r) {
    ids.add(element.disciplineId);
  }

  return ids;
}
