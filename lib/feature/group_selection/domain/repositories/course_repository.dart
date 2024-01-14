
import 'package:dartz/dartz.dart';
import 'package:studenda_mobile/core/data/error/failure.dart';
import 'package:studenda_mobile/feature/group_selection/data/models/course_model.dart';

abstract class CourseRepository {
  Future<Either<Failure,List<CourseModel>>> load(void request);
}
