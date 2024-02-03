import 'package:dartz/dartz.dart';
import 'package:studenda_mobile_student/core/data/error/exception.dart';
import 'package:studenda_mobile_student/core/data/error/failure.dart';
import 'package:studenda_mobile_student/core/network/network_info.dart';
import 'package:studenda_mobile_student/feature/group_selection/data/datasources/group_local_data_source.dart';
import 'package:studenda_mobile_student/feature/group_selection/data/datasources/group_remote_data_source.dart';
import 'package:studenda_mobile_student/feature/group_selection/data/models/group_model.dart';
import 'package:studenda_mobile_student/feature/group_selection/domain/repositories/groups_repository.dart';

class GroupRepositoryImpl implements GroupRepository {
  final GroupRemoteDataSource remoteDataSource;
  final GroupLocalDataSource localDataSource;
  final NetworkInfo networkInfo;

  GroupRepositoryImpl(
      {required this.remoteDataSource,
      required this.localDataSource,
      required this.networkInfo,});

  @override
  Future<Either<Failure, List<GroupModel>>> load(void request) async {
    if (await networkInfo.isConnected) {
      try {
        final remoteLoad = await remoteDataSource.load(request);
        localDataSource.add(remoteLoad);
        return Right(remoteLoad);
      } on ServerException {
        return const Left(ServerFailure(message: "Ошибка сервера"));
      }
    } else {
      try {
        return Right(await localDataSource.get());
      } on CacheException {
        return const Left(CacheFailure(message: "Ошибка локального хранилища"));
      }
    }
  }
}
