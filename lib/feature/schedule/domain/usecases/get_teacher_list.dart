import 'package:dartz/dartz.dart';
import 'package:studenda_mobile_student/core/data/error/failure.dart';
import 'package:studenda_mobile_student/core/data/usecases/usecase.dart';
import 'package:studenda_mobile_student/feature/auth/data/models/user_model/account_model.dart';
import 'package:studenda_mobile_student/feature/schedule/domain/repositories/teacher_repository.dart';

class GetTeacherList extends Usecase<List<AccountModel>, List<int>> {
  final TeacherRepository teacherRepository;

  GetTeacherList({required this.teacherRepository});

  @override
  Future<Either<Failure, List<AccountModel>>> call(
    List<int> request, [
    bool remote = true,
  ]) async {
    return await teacherRepository.load(request, remote);
  }
}
