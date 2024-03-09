import 'package:dartz/dartz.dart';
import 'package:studenda_mobile_student/core/data/error/failure.dart';
import 'package:studenda_mobile_student/feature/auth/data/models/user_model/account_model.dart';
import 'package:studenda_mobile_student/feature/journal/data/model/api/group_list_request_model.dart';

abstract class GroupListRepository {
  Future<Either<Failure, List<AccountModel>>> load(
    GroupListRequestModel request, [
    bool remote = true,
  ]);
}
