import 'package:dartz/dartz.dart';
import 'package:studenda_mobile_student/core/data/error/failure.dart';
import 'package:studenda_mobile_student/core/data/usecases/usecase.dart';
import 'package:studenda_mobile_student/feature/journal/data/model/api/mark_request_model.dart';
import 'package:studenda_mobile_student/feature/journal/data/model/task/mark_model.dart';
import 'package:studenda_mobile_student/feature/journal/domain/repository/mark_repository.dart';

class GetStudentMarkList extends Usecase<List<MarkModel>, MarkRequestModel> {
  final MarkRepository markRepository;

  GetStudentMarkList({required this.markRepository});

  @override
  Future<Either<Failure, List<MarkModel>>> call(
    MarkRequestModel request, [
    bool remote = true,
  ]) async {
    return await markRepository.loadStudent(request, remote);
  }
}
