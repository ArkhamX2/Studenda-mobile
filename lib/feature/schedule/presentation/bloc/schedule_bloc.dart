// ignore_for_file: void_checks

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:studenda_mobile_student/core/utils/get_current_academic_year.dart';
import 'package:studenda_mobile_student/core/utils/get_current_week_days.dart';
import 'package:studenda_mobile_student/core/utils/map_subject_model_to_day_scehdule_list.dart';
import 'package:studenda_mobile_student/feature/auth/data/models/user_model/account_model.dart';
import 'package:studenda_mobile_student/feature/schedule/data/models/day_position_model.dart';
import 'package:studenda_mobile_student/feature/schedule/data/models/discipline_model.dart';
import 'package:studenda_mobile_student/feature/schedule/data/models/extended_discipline_model.dart';
import 'package:studenda_mobile_student/feature/schedule/data/models/schedule_request_model.dart';
import 'package:studenda_mobile_student/feature/schedule/data/models/subject_model.dart';
import 'package:studenda_mobile_student/feature/schedule/data/models/subject_type_model.dart';
import 'package:studenda_mobile_student/feature/schedule/domain/entities/schedule_entity.dart';
import 'package:studenda_mobile_student/feature/schedule/domain/entities/week_type_entity.dart';
import 'package:studenda_mobile_student/feature/schedule/domain/usecases/get_all_week_type.dart';
import 'package:studenda_mobile_student/feature/schedule/domain/usecases/get_current_week_type.dart';
import 'package:studenda_mobile_student/feature/schedule/domain/usecases/get_day_position.dart';
import 'package:studenda_mobile_student/feature/schedule/domain/usecases/get_discipline_list.dart';
import 'package:studenda_mobile_student/feature/schedule/domain/usecases/get_student_schedule.dart';
import 'package:studenda_mobile_student/feature/schedule/domain/usecases/get_subject_position.dart';
import 'package:studenda_mobile_student/feature/schedule/domain/usecases/get_subject_type_list.dart';
import 'package:studenda_mobile_student/feature/schedule/domain/usecases/get_teacher_list.dart';
import 'package:studenda_mobile_student/feature/schedule/domain/usecases/get_teacher_schedule.dart';

part 'schedule_bloc.freezed.dart';
part 'schedule_event.dart';
part 'schedule_state.dart';

class ScheduleBloc extends Bloc<ScheduleEvent, ScheduleState> {
  final GetStudentScheduleByWeekType getStudentSchedule;
  final GetTeacherScheduleByWeekType getTeacherSchedule;
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
  List<ExtendedDisciplineModel> extendedDisciplineList = [];
  DateTime datePointer = DateTime.now();

  ScheduleBloc({
    required this.getTeacherSchedule,
    required this.getDisciplineList,
    required this.getTeacherList,
    required this.getStudentSchedule,
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
        weekTypeList!,
        emit,
        datePointer,
        false,
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
        weekTypeList!,
        emit,
        datePointer,
        false,
      );
    });

    on<_AddTeacherWeekType>((event, emit) async {
      emit(const ScheduleState.loading());

      currentWeekType = currentWeekType!.index == 1
          ? weekTypeList!.last
          : weekTypeList!.first;

      datePointer = datePointer.add(const Duration(days: 7));
      await loadSchedule(
        event.groupId,
        weekTypeList!,
        emit,
        datePointer,
        false,
      );
    });

    on<_SubtractTeacherWeekType>((event, emit) async {
      emit(const ScheduleState.loading());

      currentWeekType = currentWeekType!.index == 1
          ? weekTypeList!.last
          : weekTypeList!.first;

      datePointer = datePointer.subtract(const Duration(days: 7));
      await loadSchedule(
        event.groupId,
        weekTypeList!,
        emit,
        datePointer,
        false,
      );
    });

    on<_Load>((event, emit) async {
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

      if (currentWeekType!.id != -1) {
        await loadSchedule(
          event.groupId,
          [currentWeekType!],
          emit,
          DateTime.now(),
        );
      } else {
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
                    [currentWeekType!],
                    emit,
                    DateTime.now(),
                  );
                },
              ),
            );
      }
    });

    on<_LoadLocal>((event, emit) async {
      emit(const ScheduleState.loading());
      await getAllWeekType.call(() {}, false).then(
            (value) => value.fold(
              (error) => emit(ScheduleState.localLoadingFail(error.message)),
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
      if (currentWeekType!.id != -1) {
        await loadSchedule(
          event.groupId,
          [currentWeekType!],
          emit,
          DateTime.now(),
          false,
        );
      } else {
        await getCurrentWeekType
            .call(
              () {},
              false,
            )
            .then(
              (value) => value.fold(
                (error) => emit(ScheduleState.localLoadingFail(error.message)),
                (succededWeekType) async {
                  currentWeekType = WeekTypeEntity(
                    id: succededWeekType.id,
                    name: succededWeekType.name,
                    index: succededWeekType.index,
                  );
                  await loadSchedule(
                    event.groupId,
                    [currentWeekType!],
                    emit,
                    DateTime.now(),
                    false,
                  );
                },
              ),
            );
      }
    });

    on<_LoadTeacher>((event, emit) async {
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

      if (currentWeekType!.id != -1) {
        await loadSchedule(
          event.accountId,
          [currentWeekType!],
          emit,
          DateTime.now(),
        );
      } else {
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
                    event.accountId,
                    [currentWeekType!],
                    emit,
                    DateTime.now(),
                  );
                },
              ),
            );
      }
    });

    on<_LoadTeacherLocal>((event, emit) async {
      emit(const ScheduleState.loading());
      await getAllWeekType.call(() {}, false).then(
            (value) => value.fold(
              (error) => emit(ScheduleState.localLoadingFail(error.message)),
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
      if (currentWeekType!.id != -1) {
        await loadSchedule(
          event.accountId,
          [currentWeekType!],
          emit,
          DateTime.now(),
          false,
        );
      } else {
        await getCurrentWeekType
            .call(
              () {},
              false,
            )
            .then(
              (value) => value.fold(
                (error) => emit(ScheduleState.localLoadingFail(error.message)),
                (succededWeekType) async {
                  currentWeekType = WeekTypeEntity(
                    id: succededWeekType.id,
                    name: succededWeekType.name,
                    index: succededWeekType.index,
                  );
                  await loadSchedule(
                    event.accountId,
                    [currentWeekType!],
                    emit,
                    DateTime.now(),
                    false,
                  );
                },
              ),
            );
      }
    });
  }

  Future<void> loadSchedule(
    int groupId,
    List<WeekTypeEntity> weekTypes,
    Emitter<ScheduleState> emit,
    DateTime currentDate, [
    bool remote = true,
  ]) async {
    await getStudentSchedule
        .call(
          ScheduleRequestByWeekTypeModel(
            groupId: groupId,
            weekTypeIds: weekTypeList!.map((e) => e.id).toList(),
            academicYear: getCurrentAcademicYear(),
          ),
          weekTypes.map((e) => e.id).toList(),
          remote,
        )
        .then(
          (value) => value.fold(
            (error) => remote
                ? emit(ScheduleState.fail(error.message))
                : emit(ScheduleState.localLoadingFail(error.message)),
            (succededSubjectList) async {
              await _getDiscipline(
                succededSubjectList,
                emit,
                currentWeekType!,
                currentDate,
                remote,
              );
            },
          ),
        );
  }

  Future<void> _getDiscipline(
    List<SubjectModel> succededSubjectList,
    Emitter<ScheduleState> emit,
    WeekTypeEntity currentWeekType,
    DateTime currentDate, [
    bool remote = true,
  ]) async {
    await getDisciplineList
        .call(
          _getDisciplineIds(
            succededSubjectList,
          ),
          remote,
        )
        .then(
          (value) => value.fold(
            (error) => remote
                ? emit(ScheduleState.fail(error.message))
                : emit(ScheduleState.localLoadingFail(error.message)),
            (succededDisciplineList) async {
              await _getTeacher(
                succededSubjectList,
                emit,
                succededDisciplineList,
                currentWeekType,
                currentDate,
                remote,
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
    DateTime currentDate, [
    bool remote = true,
  ]) async {
    await getTeacherList
        .call(
          _getTeacherIds(succededSubjectList),
          remote,
        )
        .then(
          (value) => value.fold(
            (error) => remote
                ? emit(ScheduleState.fail(error.message))
                : emit(ScheduleState.localLoadingFail(error.message)),
            (succededTeacherList) async {
              await _getSubjectType(
                succededSubjectList,
                emit,
                succededDisciplineList,
                succededTeacherList,
                currentWeekType,
                currentDate,
                remote,
              );
            },
          ),
        );
  }

  Future<void> _getSubjectType(
    List<SubjectModel> succededSubjectList,
    Emitter<ScheduleState> emit,
    List<DisciplineModel> succededDisciplineList,
    List<AccountModel> succededTeacherList,
    WeekTypeEntity currentWeekType,
    DateTime currentDate, [
    bool remote = true,
  ]) async {
    await getSubjectType
        .call(
          _getSubjectTypeIds(
            succededSubjectList,
          ),
          remote,
        )
        .then(
          (value) => value.fold(
            (error) => remote
                ? emit(ScheduleState.fail(error.message))
                : emit(ScheduleState.localLoadingFail(error.message)),
            (succededSubjectTypeList) async {
              await _getDayPosition(
                emit,
                succededSubjectList,
                succededDisciplineList,
                succededTeacherList,
                succededSubjectTypeList,
                currentWeekType,
                currentDate,
                remote,
              );
            },
          ),
        );
  }

  Future<void> _getDayPosition(
    Emitter<ScheduleState> emit,
    List<SubjectModel> succededSubjectList,
    List<DisciplineModel> succededDisciplineList,
    List<AccountModel> succededTeacherList,
    List<SubjectTypeModel> succededSubjectTypeList,
    WeekTypeEntity currentWeekType,
    DateTime currentDate, [
    bool remote = true,
  ]) async {
    await getDayPosition
        .call(
          () {},
          remote,
        )
        .then(
          (value) => value.fold(
            (error) => remote
                ? emit(ScheduleState.fail(error.message))
                : emit(ScheduleState.localLoadingFail(error.message)),
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
                remote,
              );
            },
          ),
        );
  }

  Future<void> _getSubjectPosition(
    Emitter<ScheduleState> emit,
    List<SubjectModel> succededSubjectList,
    List<DisciplineModel> succededDisciplineList,
    List<AccountModel> succededTeacherList,
    List<DayPositionModel> succededDayPositionList,
    List<SubjectTypeModel> succededSubjectTypeList,
    WeekTypeEntity currentWeekType,
    DateTime currentDate, [
    bool remote = true,
  ]) async {
    await getSubjectPosition
        .call(
          () {},
          remote,
        )
        .then(
          (value) => value.fold(
            (error) => remote
                ? emit(ScheduleState.fail(error.message))
                : emit(ScheduleState.localLoadingFail(error.message)),
            (succededSubjectPositionList) {
              extendedDisciplineList = mapDisciplinesAndTypes(
                succededSubjectList,
                succededDisciplineList,
                succededSubjectTypeList,
              );
              remote
                  ? emit(
                      ScheduleState.success(
                        ScheduleEntity(
                          schedule: mapSubjectModelToStudentDayScheduleList(
                            succededSubjectList,
                            succededDisciplineList,
                            succededTeacherList,
                            succededDayPositionList,
                            succededSubjectPositionList,
                            succededSubjectTypeList,
                            [],
                          ),
                          weekType: currentWeekType,
                          weekDays: getCurrentWeekDays(currentDate),
                        ),
                      ),
                    )
                  : emit(
                      ScheduleState.localLoadingSuccess(
                        ScheduleEntity(
                          schedule: mapSubjectModelToStudentDayScheduleList(
                            succededSubjectList,
                            succededDisciplineList,
                            succededTeacherList,
                            succededDayPositionList,
                            succededSubjectPositionList,
                            succededSubjectTypeList,
                            [],
                          ),
                          weekType: currentWeekType,
                          weekDays: getCurrentWeekDays(currentDate),
                        ),
                      ),
                    );
            },
          ),
        );
  }
}

List<ExtendedDisciplineModel> mapDisciplinesAndTypes(
  List<SubjectModel> succededSubjectList,
  List<DisciplineModel> succededDisciplineList,
  List<SubjectTypeModel> succededSubjectTypeList,
) {
  return succededSubjectList
      .map(
        (e) => ExtendedDisciplineModel(
          discipline: succededDisciplineList.firstWhere(
            (element) => element.id == e.disciplineId,
          ),
          subjectType: succededSubjectTypeList.firstWhere(
            (element) => element.id == e.subjectTypeId,
          ),
          subjectId: e.id,
        ),
      )
      .toList();
}

List<int> _getSubjectTypeIds(List<SubjectModel> succededSubjectList) {
  return succededSubjectList.map((e) => e.subjectTypeId ?? -1).toSet().toList();
}

List<int> _getTeacherIds(List<SubjectModel> succededSubjectList) {
  return succededSubjectList.map((e) => e.accountId ?? -1).toSet().toList();
}

List<int> _getDisciplineIds(List<SubjectModel> succededSubjectList) {
  return succededSubjectList.map((e) => e.disciplineId ?? -1).toSet().toList();
}
