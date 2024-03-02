import 'package:dartz/dartz.dart';
import 'package:studenda_mobile_student/core/data/error/failure.dart';
import 'package:studenda_mobile_student/core/data/usecases/usecase.dart';
import 'package:studenda_mobile_student/feature/schedule/data/models/schedule_request_model.dart';
import 'package:studenda_mobile_student/feature/schedule/data/models/subject_model.dart';
import 'package:studenda_mobile_student/feature/schedule/domain/repositories/schedule_repository.dart';

class GetScheduleByWeekType
    extends Usecase<List<SubjectModel>, ScheduleRequestByWeekTypeModel> {
  final ScheduleByWeekTypeRepository scheduleRepository;

  GetScheduleByWeekType({required this.scheduleRepository});

  @override
  Future<Either<Failure, List<SubjectModel>>> call(
    ScheduleRequestByWeekTypeModel request, [
    List<int> weekTypeIds = const [],
    bool remote = true,
  ]) async {
    return await scheduleRepository.load(request, weekTypeIds, remote);
  }
}
