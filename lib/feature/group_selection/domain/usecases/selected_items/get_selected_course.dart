import 'package:dartz/dartz.dart';
import 'package:studenda_mobile_student/core/data/error/failure.dart';
import 'package:studenda_mobile_student/core/data/usecases/usecase.dart';
import 'package:studenda_mobile_student/feature/group_selection/data/models/course_model.dart';
import 'package:studenda_mobile_student/feature/group_selection/domain/repositories/selected_items_repository.dart';

class GetSelectedCourse extends Usecase<CourseModel,void>{
  final SelectedItemsRepository itemsRepository;

  GetSelectedCourse({required this.itemsRepository});

  @override
  Future<Either<Failure,CourseModel>> call(void request) async{
    return await itemsRepository.getCourse(request);
  }
}
