import 'package:dartz/dartz.dart';
import 'package:studenda_mobile_student/core/data/error/failure.dart';
import 'package:studenda_mobile_student/feature/journal/data/model/mark_model.dart';

abstract class MarkRepository {
  Future<Either<Failure, List<MarkModel>>> load(
    List<int> request, [
    bool remote = true,
  ]);
}
