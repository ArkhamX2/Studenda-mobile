import 'package:dartz/dartz.dart';
import 'package:studenda_mobile_student/core/data/error/failure.dart';
import 'package:studenda_mobile_student/core/data/usecases/usecase.dart';
import 'package:studenda_mobile_student/feature/schedule/data/models/subject_position_model.dart';
import 'package:studenda_mobile_student/feature/schedule/domain/repositories/subject_position_repository.dart';

class GetSubjectPositionList extends Usecase<List<SubjectPositionModel>, void> {
  final SubjectPositionRepository subjectPositionRepository;

  GetSubjectPositionList({required this.subjectPositionRepository});

  @override
  Future<Either<Failure, List<SubjectPositionModel>>> call(
    void request, [
    bool remote = true,
  ]) async {
    return await subjectPositionRepository.load(request, remote);
  }
}
