import 'package:dartz/dartz.dart';
import 'package:studenda_mobile_student/core/data/error/failure.dart';
import 'package:studenda_mobile_student/core/data/usecases/usecase.dart';
import 'package:studenda_mobile_student/feature/journal/data/model/task/mark_model.dart';
import 'package:studenda_mobile_student/feature/journal/domain/repository/mark_repository.dart';

class GetMarkList extends Usecase<List<MarkModel>, List<int>> {
  final MarkRepository markRepository;

  GetMarkList({required this.markRepository});

  @override
  Future<Either<Failure, List<MarkModel>>> call(
    List<int> request, [
    bool remote = true,
  ]) async {
    return await markRepository.load(request, remote);
  }
}
