import 'package:dartz/dartz.dart';
import 'package:studenda_mobile_student/core/data/error/exception.dart';
import 'package:studenda_mobile_student/core/data/error/failure.dart';
import 'package:studenda_mobile_student/core/network/network_info.dart';
import 'package:studenda_mobile_student/feature/group_selection/data/datasources/department_local_data_source.dart';
import 'package:studenda_mobile_student/feature/group_selection/data/datasources/department_remote_data_source.dart';
import 'package:studenda_mobile_student/feature/group_selection/data/models/department_model.dart';
import 'package:studenda_mobile_student/feature/group_selection/domain/repositories/department_repository.dart';

class DepartmentRepositoryImpl implements DepartmentRepository {
  final DepartmentRemoteDataSource remoteDataSource;
  final DepartmentLocalDataSource localDataSource;
  final NetworkInfo networkInfo;

  DepartmentRepositoryImpl({
    required this.remoteDataSource,
    required this.localDataSource,
    required this.networkInfo,
  });

  @override
  Future<Either<Failure, List<DepartmentModel>>> load(
    void request, [
    bool remote = true,
  ]) async {
    if (await networkInfo.isConnected && remote) {
      try {
        final remoteLoad = await remoteDataSource.load(request);
        await localDataSource.add(remoteLoad);
        return Right(await localDataSource.get());
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
