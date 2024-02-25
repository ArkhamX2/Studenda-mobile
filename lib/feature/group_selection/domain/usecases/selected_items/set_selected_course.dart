import 'package:dartz/dartz.dart';
import 'package:studenda_mobile_student/core/data/error/failure.dart';
import 'package:studenda_mobile_student/core/data/usecases/usecase.dart';
import 'package:studenda_mobile_student/feature/group_selection/data/models/course_model.dart';
import 'package:studenda_mobile_student/feature/group_selection/domain/entities/course_entity.dart';
import 'package:studenda_mobile_student/feature/group_selection/domain/repositories/selected_items_repository.dart';

class SetSelectedCourse extends Usecase<void, CourseEntity> {
  final SelectedItemsRepository itemsRepository;

  SetSelectedCourse({required this.itemsRepository});

  @override
  Future<Either<Failure, void>> call(CourseEntity request) async {
    return await itemsRepository.setCourse(
      CourseModel(
        id: request.id,
        name: request.name,
        grade: request.grade,
      ),
    );
  }
}
