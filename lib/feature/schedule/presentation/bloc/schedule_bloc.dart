// ignore_for_file: void_checks

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:studenda_mobile_student/core/data/user_model/user_model.dart';
import 'package:studenda_mobile_student/core/utils/get_current_academic_year.dart';
import 'package:studenda_mobile_student/core/utils/get_current_week_days.dart';
import 'package:studenda_mobile_student/core/utils/map_subject_model_to_day_scehdule_list.dart';
import 'package:studenda_mobile_student/feature/schedule/data/models/day_position_model.dart';
import 'package:studenda_mobile_student/feature/schedule/data/models/discipline_model.dart';
import 'package:studenda_mobile_student/feature/schedule/data/models/schedule_request_model.dart';
import 'package:studenda_mobile_student/feature/schedule/data/models/subject_model.dart';
import 'package:studenda_mobile_student/feature/schedule/data/models/subject_type_model.dart';
import 'package:studenda_mobile_student/feature/schedule/domain/entities/schedule_entity.dart';
import 'package:studenda_mobile_student/feature/schedule/domain/entities/week_type_entity.dart';
import 'package:studenda_mobile_student/feature/schedule/domain/usecases/get_all_week_type.dart';
import 'package:studenda_mobile_student/feature/schedule/domain/usecases/get_current_week_type.dart';
import 'package:studenda_mobile_student/feature/schedule/domain/usecases/get_day_position.dart';
import 'package:studenda_mobile_student/feature/schedule/domain/usecases/get_discipline_list.dart';
import 'package:studenda_mobile_student/feature/schedule/domain/usecases/get_schedule.dart';
import 'package:studenda_mobile_student/feature/schedule/domain/usecases/get_subject_position.dart';
import 'package:studenda_mobile_student/feature/schedule/domain/usecases/get_subject_type_list.dart';
import 'package:studenda_mobile_student/feature/schedule/domain/usecases/get_teacher_list.dart';

part 'schedule_bloc.freezed.dart';
part 'schedule_event.dart';
part 'schedule_state.dart';

class ScheduleBloc extends Bloc<ScheduleEvent, ScheduleState> {
  final GetSchedule getSchedule;
  final GetCurrentWeekType getCurrentWeekType;
  final GetAllWeekType getAllWeekType;
  final GetDisciplineList getDisciplineList;
  final GetTeacherList getTeacherList;
  final GetDayPositionList getDayPosition;
  final GetSubjectPositionList getSubjectPosition;
  final GetSubjectTypeList getSubjectType;
  WeekTypeEntity? currentWeekType =
      const WeekTypeEntity(id: -1, name: "name", index: -1);
  List<WeekTypeEntity>? weekTypeList = [];
  DateTime datePointer = DateTime.now();

  ScheduleBloc({
    required this.getDisciplineList,
    required this.getTeacherList,
    required this.getSchedule,
    required this.getCurrentWeekType,
    required this.getAllWeekType,
    required this.getDayPosition,
    required this.getSubjectPosition,
    required this.getSubjectType,
  }) : super(const _Initial()) {
    on<_AddWeekType>((event, emit) async {
      emit(const ScheduleState.loading());

      currentWeekType = currentWeekType!.index == 1
          ? weekTypeList!.last
          : weekTypeList!.first;

      datePointer = datePointer.add(const Duration(days: 7));
      await loadSchedule(
        event.groupId,
        currentWeekType!,
        emit,
        datePointer,
      );
    });

    on<_SubtractWeekType>((event, emit) async {
      emit(const ScheduleState.loading());

      currentWeekType = currentWeekType!.index == 1
          ? weekTypeList!.last
          : weekTypeList!.first;

      datePointer = datePointer.subtract(const Duration(days: 7));
      await loadSchedule(
        event.groupId,
        currentWeekType!,
        emit,
        datePointer,
      );
    });

    on<_Load>((event, emit) async {
      emit(const ScheduleState.loading());

      await getAllWeekType.call(() {}).then(
            (value) => value.fold(
              (error) => emit(ScheduleState.fail(error.message)),
              (succededWeekType) async {
                weekTypeList = succededWeekType
                    .map(
                      (e) => WeekTypeEntity(
                        id: e.id,
                        name: e.name,
                        index: e.index,
                      ),
                    )
                    .toList();
                if (weekTypeList!.isNotEmpty) {
                  weekTypeList!.sort(
                    (a, b) => a.index.compareTo(b.index),
                  );
                }
              },
            ),
          );

      await getCurrentWeekType.call(() {}).then(
            (value) => value.fold(
              (error) => emit(ScheduleState.fail(error.message)),
              (succededWeekType) async {
                currentWeekType = WeekTypeEntity(
                  id: succededWeekType.id,
                  name: succededWeekType.name,
                  index: succededWeekType.index,
                );
                await loadSchedule(
                  event.groupId,
                  currentWeekType!,
                  emit,
                  DateTime.now(),
                );
              },
            ),
          );
    });
  }

  Future<void> loadSchedule(
    int groupId,
    WeekTypeEntity currentWeekType,
    Emitter<ScheduleState> emit,
    DateTime currentDate,
  ) async {
    await getSchedule
        .call(
          ScheduleRequestModel(
            groupId: groupId,
            weekTypeId: currentWeekType.id,
            academicYear: getCurrentAcademicYear(),
          ),
        )
        .then(
          (value) => value.fold(
            (error) => emit(ScheduleState.fail(error.message)),
            (succededSubjectList) async {
              await _getDiscipline(
                succededSubjectList,
                emit,
                currentWeekType,
                currentDate,
              );
            },
          ),
        );
  }

  Future<void> _getDiscipline(
    List<SubjectModel> succededSubjectList,
    Emitter<ScheduleState> emit,
    WeekTypeEntity currentWeekType,
    DateTime currentDate,
  ) async {
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
              await _getTeacher(
                succededSubjectList,
                emit,
                succededDisciplineList,
                currentWeekType,
                currentDate,
              );
            },
          ),
        );
  }

  Future<void> _getTeacher(
    List<SubjectModel> succededSubjectList,
    Emitter<ScheduleState> emit,
    List<DisciplineModel> succededDisciplineList,
    WeekTypeEntity currentWeekType,
    DateTime currentDate,
  ) async {
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
              await _getSubjectType(
                succededSubjectList,
                emit,
                succededDisciplineList,
                succededTeacherList,
                currentWeekType,
                currentDate,
              );
            },
          ),
        );
  }

  Future<void> _getSubjectType(
    List<SubjectModel> succededSubjectList,
    Emitter<ScheduleState> emit,
    List<DisciplineModel> succededDisciplineList,
    List<UserModel> succededTeacherList,
    WeekTypeEntity currentWeekType,
    DateTime currentDate,
  ) async {
    await getSubjectType
        .call(
          _getSubjectTypeIds(
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
            (succededSubjectTypeList) async {
              await _getDayPosition(
                emit,
                succededSubjectList,
                succededDisciplineList,
                succededTeacherList,
                succededSubjectTypeList,
                currentWeekType,
                currentDate,
              );
            },
          ),
        );
  }

  Future<void> _getDayPosition(
    Emitter<ScheduleState> emit,
    List<SubjectModel> succededSubjectList,
    List<DisciplineModel> succededDisciplineList,
    List<UserModel> succededTeacherList,
    List<SubjectTypeModel> succededSubjectTypeList,
    WeekTypeEntity currentWeekType,
    DateTime currentDate,
  ) async {
    await getDayPosition
        .call(
          () {},
        )
        .then(
          (value) => value.fold(
            (error) => emit(
              ScheduleState.fail(
                error.message,
              ),
            ),
            (succededDayPositionList) async {
              await _getSubjectPosition(
                emit,
                succededSubjectList,
                succededDisciplineList,
                succededTeacherList,
                succededDayPositionList,
                succededSubjectTypeList,
                currentWeekType,
                currentDate,
              );
            },
          ),
        );
  }

  Future<void> _getSubjectPosition(
    Emitter<ScheduleState> emit,
    List<SubjectModel> succededSubjectList,
    List<DisciplineModel> succededDisciplineList,
    List<UserModel> succededTeacherList,
    List<DayPositionModel> succededDayPositionList,
    List<SubjectTypeModel> succededSubjectTypeList,
    WeekTypeEntity currentWeekType,
    DateTime currentDate,
  ) async {
    await getSubjectPosition
        .call(
          () {},
        )
        .then(
          (value) => value.fold(
            (error) => emit(
              ScheduleState.fail(
                error.message,
              ),
            ),
            (succededSubjectPositionList) => emit(
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
                  weekType: currentWeekType,
                  weekDays: getCurrentWeekDays(currentDate),
                ),
              ),
            ),
          ),
        );
  }
}

List<int> _getSubjectTypeIds(List<SubjectModel> succededSubjectList) {
  final List<int> ids = [];

  for (final element in succededSubjectList) {
    ids.add(element.subjectTypeId);
  }

  return ids;
}

List<int> _getTeacherIds(List<SubjectModel> succededSubjectList) {
  final List<int> ids = succededSubjectList.map((e) => e.userId).toSet().toList();
  return ids;
}

List<int> _getDisciplineIds(List<SubjectModel> succededSubjectList) {
  final List<int> ids = [];

  for (final element in succededSubjectList) {
    ids.add(element.disciplineId);
  }

  return ids;
}
