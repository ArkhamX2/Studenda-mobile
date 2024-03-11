import 'package:dartz/dartz.dart';
import 'package:studenda_mobile_student/core/data/error/failure.dart';
import 'package:studenda_mobile_student/core/data/usecases/usecase.dart';
import 'package:studenda_mobile_student/feature/schedule/data/models/api/teacher_scheduke_request.dart';
import 'package:studenda_mobile_student/feature/schedule/data/models/subject/subject_model.dart';
import 'package:studenda_mobile_student/feature/schedule/domain/repositories/schedule_repository.dart';

class GetTeacherScheduleByWeekType
    extends Usecase<List<SubjectModel>, TeacherRequestByWeekTypeModel> {
  final ScheduleByWeekTypeRepository scheduleRepository;

  GetTeacherScheduleByWeekType({required this.scheduleRepository});

  @override
  Future<Either<Failure, List<SubjectModel>>> call(
    TeacherRequestByWeekTypeModel request, [
    List<int> weekTypeIds = const [],
    bool remote = true,
  ]) async {
    return await scheduleRepository.loadTeacher(request, weekTypeIds, remote);
  }
}
