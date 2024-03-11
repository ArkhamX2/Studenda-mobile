// ignore_for_file: void_checks
import 'package:dartz/dartz.dart';
import 'package:studenda_mobile_student/core/data/error/failure.dart';
import 'package:studenda_mobile_student/core/data/usecases/usecase.dart';
import 'package:studenda_mobile_student/feature/schedule/data/models/subject_type/subject_type_model.dart';
import 'package:studenda_mobile_student/feature/schedule/domain/repositories/subject_type_repository.dart';

class GetSubjectTypeList extends Usecase<List<SubjectTypeModel>, void> {
  final SubjectTypeRepository subjectTypeRepository;

  GetSubjectTypeList({required this.subjectTypeRepository});

  @override
  Future<Either<Failure, List<SubjectTypeModel>>> call(
    void request, [
    bool remote = true,
  ]) async {
    return await subjectTypeRepository.load(remote);
  }
}
