import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:studenda_mobile_student/core/utils/get_current_academic_year.dart';
import 'package:studenda_mobile_student/feature/schedule/data/models/schedule_request_model.dart';
import 'package:studenda_mobile_student/feature/schedule/data/models/subject_model.dart';
import 'package:studenda_mobile_student/feature/schedule/domain/entities/week_type_entity.dart';
import 'package:studenda_mobile_student/feature/schedule/domain/usecases/get_student_schedule.dart';

part 'subject_state.dart';
part 'subject_cubit.freezed.dart';

class SubjectCubit extends Cubit<SubjectState> {

  final GetStudentScheduleByWeekType getSchedule;
  SubjectCubit(this.getSchedule) : super(const SubjectState.initial());

  Future<void> load(
    int groupId,
    List<WeekTypeEntity> weekTypes,
  ) async {
    final result = await getSchedule(
          ScheduleRequestByWeekTypeModel(
            groupId: groupId,
            weekTypeIds: weekTypes.map((e) => e.id).toList(),
            academicYear: getCurrentAcademicYear(),
          ),
          weekTypes.map((e) => e.id).toList(),);
    result.fold(
      (l) => emit(SubjectState.loadingFail(l.message)),
      (r) {
        emit(
          SubjectState.loadingSuccess(
            r,
          ),
        );
      },
    );
  }

  Future<void> loadLocally(
    int groupId,
    List<WeekTypeEntity> weekTypes,
  ) async {
    emit(const SubjectState.loading());
     final result = await getSchedule(
          ScheduleRequestByWeekTypeModel(
            groupId: groupId,
            weekTypeIds: weekTypes.map((e) => e.id).toList(),
            academicYear: getCurrentAcademicYear(),
          ),
          weekTypes.map((e) => e.id).toList(),);
    result.fold(
      (l) => emit(SubjectState.loadingFail(l.message)),
      (r) {
        emit(
          SubjectState.loadingSuccess(
            r,
          ),
        );
      },
    );
  }
}
