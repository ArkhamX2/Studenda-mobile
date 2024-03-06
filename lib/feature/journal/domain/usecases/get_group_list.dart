import 'package:dartz/dartz.dart';
import 'package:studenda_mobile_student/core/data/error/failure.dart';
import 'package:studenda_mobile_student/core/data/usecases/usecase.dart';
import 'package:studenda_mobile_student/feature/auth/data/models/user_model/user_model.dart';
import 'package:studenda_mobile_student/feature/journal/data/model/api/group_list_request_model.dart';
import 'package:studenda_mobile_student/feature/journal/domain/repository/group_list_repository.dart';

class GetGroupList extends Usecase<List<UserModel>, GroupListRequestModel> {
  final GroupListRepository groupListRepository;

  GetGroupList({required this.groupListRepository});

  @override
  Future<Either<Failure, List<UserModel>>> call(
    GroupListRequestModel request, [
    bool remote = true,
  ]) async {
    return await groupListRepository.load(request, remote);
  }
}
