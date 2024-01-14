import 'package:dartz/dartz.dart';
import 'package:studenda_mobile/core/data/error/failure.dart';
import 'package:studenda_mobile/core/data/usecases/usecase.dart';
import 'package:studenda_mobile/feature/group_selection/domain/entities/course.dart';
import 'package:studenda_mobile/feature/group_selection/domain/repositories/course_repository.dart';

class LoadCourses extends Usecase<List<CourseEntity>,void>{
  final CourseRepository courseRepository;

  LoadCourses({required this.courseRepository});

  @override
  Future<Either<Failure,List<CourseEntity>>> call(void request) async{
    return await courseRepository.load(request);
  }
}
