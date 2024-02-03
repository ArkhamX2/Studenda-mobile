import 'package:dartz/dartz.dart';
import 'package:studenda_mobile_student/core/data/error/failure.dart';
import 'package:studenda_mobile_student/core/data/usecases/usecase.dart';
import 'package:studenda_mobile_student/feature/schedule/data/models/schedule_request_model.dart';
import 'package:studenda_mobile_student/feature/schedule/data/models/subject_model.dart';
import 'package:studenda_mobile_student/feature/schedule/domain/repositories/schedule_repository.dart';

class GetSchedule extends Usecase<List<SubjectModel>,ScheduleRequestModel>{
  final ScheduleRepository scheduleRepository;

  GetSchedule({required this.scheduleRepository});

  @override
  Future<Either<Failure,List<SubjectModel>>> call(ScheduleRequestModel request, [bool remote = true]) async{
    return await scheduleRepository.load(request,remote);
  }
}
