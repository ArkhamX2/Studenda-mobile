import 'package:dartz/dartz.dart';
import 'package:studenda_mobile_student/core/data/error/failure.dart';
import 'package:studenda_mobile_student/core/data/usecases/usecase.dart';
import 'package:studenda_mobile_student/feature/journal/data/model/absence_model.dart';
import 'package:studenda_mobile_student/feature/journal/data/model/absence_request_model.dart';
import 'package:studenda_mobile_student/feature/journal/domain/repository/absence_repository.dart';

class GetAbsenceList extends Usecase<List<AbsenceModel>, AbsenceRequestModel> {
  final AbsenceRepository groupListRepository;

  GetAbsenceList({required this.groupListRepository});

  @override
  Future<Either<Failure, List<AbsenceModel>>> call(
    AbsenceRequestModel request, [
    bool remote = true,
  ]) async {
    return await groupListRepository.load(request, remote);
  }
}
