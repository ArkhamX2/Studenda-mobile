
import 'package:dartz/dartz.dart';
import 'package:studenda_mobile_student/core/data/error/failure.dart';
import 'package:studenda_mobile_student/feature/group_selection/data/models/course_model.dart';

abstract class CourseRepository {
  Future<Either<Failure,List<CourseModel>>> load(void request);
}
