import 'package:dartz/dartz.dart';
import 'package:studenda_mobile_student/core/data/error/exception.dart';
import 'package:studenda_mobile_student/core/data/error/failure.dart';
import 'package:studenda_mobile_student/core/data/repository/repository.dart';
import 'package:studenda_mobile_student/core/network/network_info.dart';
import 'package:studenda_mobile_student/feature/schedule/data/datasources/local/week_type_local_data_source.dart';
import 'package:studenda_mobile_student/feature/schedule/data/datasources/remote/week_type_remote_data_source.dart';
import 'package:studenda_mobile_student/feature/schedule/data/models/week_type_model.dart';
import 'package:studenda_mobile_student/feature/schedule/domain/repositories/week_type_repository.dart';

class WeekTypeRepositoryImpl implements WeekTypeRepository {
  final WeekTypeRemoteDataSource remoteDataSource;
  final WeekTypeLocalDataSource localDataSource;
  final NetworkInfo networkInfo;

  WeekTypeRepositoryImpl({
    required this.remoteDataSource,
    required this.localDataSource,
    required this.networkInfo,
  });
  @override
  Future<Either<Failure, WeekTypeModel>> getCurrent(
    void request, [
    bool remote = true,
  ]) async {
    if (await networkInfo.isConnected && remote) {
      try {
        final remoteLoad = await remoteDataSource.getCurrent(request);
        await localDataSource.setCurrent(remoteLoad);
        return Right(localDataSource.getCurrent());
      } on ServerException {
        return const Left(ServerFailure(message: "Ошибка сервера"));
      }
    } else {
      try {
        return Right(localDataSource.getCurrent());
      } on CacheException {
        return const Left(
          CacheFailure(message: "Ошибка локального хранилища"),
        );
      }
    }
  }

  @override
  Future<Either<Failure, List<WeekTypeModel>>> getAll(
    void request, [
    bool remote = true,
  ]) async {
    return await loadData<
        WeekTypeLocalDataSource,
        WeekTypeRemoteDataSource,
        List<WeekTypeModel>,
        void>(localDataSource, remoteDataSource, remote, request, networkInfo);
  }
}
