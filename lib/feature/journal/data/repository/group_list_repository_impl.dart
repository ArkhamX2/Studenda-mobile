import 'package:dartz/dartz.dart';
import 'package:studenda_mobile_student/core/data/error/failure.dart';
import 'package:studenda_mobile_student/core/data/repository/repository.dart';
import 'package:studenda_mobile_student/core/network/network_info.dart';
import 'package:studenda_mobile_student/feature/auth/data/models/user_model/account_model.dart';
import 'package:studenda_mobile_student/feature/journal/data/datasource/local/group_list_local_data_source.dart';
import 'package:studenda_mobile_student/feature/journal/data/datasource/remote/group_list_remote_data_source.dart';
import 'package:studenda_mobile_student/feature/journal/data/model/api/group_list_request_model.dart';
import 'package:studenda_mobile_student/feature/journal/domain/repository/group_list_repository.dart';

class GroupListRepositoryImpl implements GroupListRepository {
  final GroupListRemoteDataSource remoteDataSource;
  final GroupListLocalDataSource localDataSource;
  final NetworkInfo networkInfo;

  GroupListRepositoryImpl({
    required this.remoteDataSource,
    required this.localDataSource,
    required this.networkInfo,
  });

  @override
  Future<Either<Failure, List<AccountModel>>> load(
    GroupListRequestModel request, [
    bool remote = true,
  ]) async {
    return await loadStudentData<GroupListLocalDataSource,
        GroupListRemoteDataSource, List<AccountModel>, GroupListRequestModel>(
      localDataSource,
      remoteDataSource,
      remote,
      request,
      networkInfo,
    );
  }
}
