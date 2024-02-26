import 'package:dartz/dartz.dart';
import 'package:studenda_mobile_student/core/data/error/failure.dart';
import 'package:studenda_mobile_student/feature/journal/data/model/task/mark_type_model.dart';

abstract class MarkTypeRepository {
  Future<Either<Failure, List<MarkTypeModel>>> load(
    void request, [
    bool remote = true,
  ]);
}
