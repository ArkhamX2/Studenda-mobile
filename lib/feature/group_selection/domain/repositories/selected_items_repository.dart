import 'package:dartz/dartz.dart';
import 'package:studenda_mobile_student/core/data/error/failure.dart';
import 'package:studenda_mobile_student/feature/group_selection/data/models/course_model.dart';
import 'package:studenda_mobile_student/feature/group_selection/data/models/department_model.dart';
import 'package:studenda_mobile_student/feature/group_selection/data/models/group_model.dart';

abstract class SelectedItemsRepository {
  Future<Either<Failure,CourseModel>> getCourse(void request);

  Future<Either<Failure,DepartmentModel>> getDepartment(void request);

  Future<Either<Failure,GroupModel>> getGroup(void request);

  Future<Either<Failure,void>> setCourse(CourseModel request);

  Future<Either<Failure,void>> setDepartment(DepartmentModel request);

  Future<Either<Failure,void>> setGroup(GroupModel request);
}
