import 'package:dartz/dartz.dart';
import 'package:studenda_mobile/core/data/error/failure.dart';
import 'package:studenda_mobile/core/data/user_model/user_model.dart';

abstract class TeacherRepository {
  Future<Either<Failure,List<UserModel>>> load(List<int> request);
}