import 'package:dartz/dartz.dart';
import 'package:studenda_mobile_student/core/data/error/failure.dart';
import 'package:studenda_mobile_student/core/data/repository/repository.dart';
import 'package:studenda_mobile_student/core/network/network_info.dart';
import 'package:studenda_mobile_student/feature/group_selection/data/datasources/local/group_local_data_source.dart';
import 'package:studenda_mobile_student/feature/group_selection/data/datasources/remote/group_remote_data_source.dart';
import 'package:studenda_mobile_student/feature/group_selection/data/models/group_model.dart';
import 'package:studenda_mobile_student/feature/group_selection/domain/repositories/groups_repository.dart';

class GroupRepositoryImpl implements GroupRepository {
  final GroupRemoteDataSource remoteDataSource;
  final GroupLocalDataSource localDataSource;
  final NetworkInfo networkInfo;

  GroupRepositoryImpl({
    required this.remoteDataSource,
    required this.localDataSource,
    required this.networkInfo,
  });

  @override
  Future<Either<Failure, List<GroupModel>>> load(
    void request, [
    bool remote = true,
  ]) async {
    return await loadStudentData<
        GroupLocalDataSource,
        GroupRemoteDataSource,
        List<GroupModel>,
        void>(localDataSource, remoteDataSource, remote, request, networkInfo);
  }
}
