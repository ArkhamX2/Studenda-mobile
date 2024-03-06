import 'package:dartz/dartz.dart';
import 'package:studenda_mobile_student/core/data/error/failure.dart';
import 'package:studenda_mobile_student/feature/journal/data/model/api/mark_request_model.dart';
import 'package:studenda_mobile_student/feature/journal/data/model/task/mark_model.dart';

abstract class MarkRepository {
  Future<Either<Failure, List<MarkModel>>> load(
    MarkRequestModel request, [
    bool remote = true,
  ]);
}
