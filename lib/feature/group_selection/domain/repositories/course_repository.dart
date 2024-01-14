
import 'package:dartz/dartz.dart';
import 'package:studenda_mobile/core/data/error/failure.dart';
import 'package:studenda_mobile/feature/group_selection/domain/entities/course_entity.dart';

abstract class CourseRepository {
  Future<Either<Failure,List<CourseEntity>>> load(void request);
}