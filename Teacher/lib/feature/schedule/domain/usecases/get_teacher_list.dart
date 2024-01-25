import 'package:dartz/dartz.dart';
import 'package:studenda_mobile/core/data/error/failure.dart';
import 'package:studenda_mobile/core/data/usecases/usecase.dart';
import 'package:studenda_mobile/core/data/user_model/user_model.dart';
import 'package:studenda_mobile/feature/schedule/domain/repositories/teacher_repository.dart';

class GetTeacherList extends Usecase<List<UserModel>,List<int>>{
  final TeacherRepository teacherRepository;

  GetTeacherList({required this.teacherRepository});

  @override
  Future<Either<Failure,List<UserModel>>> call(List<int> request) async{
    return await teacherRepository.load(request);
  }
}
