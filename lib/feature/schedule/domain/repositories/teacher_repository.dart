import 'package:dartz/dartz.dart';
import 'package:studenda_mobile_student/core/data/error/failure.dart';
import 'package:studenda_mobile_student/feature/auth/data/models/user_model/account_model.dart';

abstract class TeacherRepository {
  Future<Either<Failure, List<AccountModel>>> load(
    List<int> request, [
    bool remote = true,
  ]);
}
