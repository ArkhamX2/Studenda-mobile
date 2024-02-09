import 'package:dartz/dartz.dart';
import 'package:studenda_mobile_student/core/data/error/exception.dart';
import 'package:studenda_mobile_student/core/data/error/failure.dart';
import 'package:studenda_mobile_student/core/network/network_info.dart';
import 'package:studenda_mobile_student/feature/schedule/data/datasources/local/discipline_local_data_source.dart';
import 'package:studenda_mobile_student/feature/schedule/data/datasources/remote/discipline_remote_data_source.dart';
import 'package:studenda_mobile_student/feature/schedule/data/models/discipline_model.dart';
import 'package:studenda_mobile_student/feature/schedule/domain/repositories/discipline_repository.dart';

class DisciplineRepositoryImpl implements DisciplineRepository {
  final DisciplineRemoteDataSource remoteDataSource;
  final DisciplineLocalDataSource localDataSource;
  final NetworkInfo networkInfo;

  DisciplineRepositoryImpl({
    required this.remoteDataSource,
    required this.localDataSource,
    required this.networkInfo,
  });
  @override
  Future<Either<Failure, List<DisciplineModel>>> load(
    List<int> request, [
    bool remote = true,
  ]) async {
    if (request.isEmpty) return const Right([]);
    if (remote) {
      if (await networkInfo.isConnected) {
        try {
          final remoteLoad = await remoteDataSource.load(request);
          await localDataSource.add(remoteLoad);
          final tmp =await localDataSource.load();
          return Right(remoteLoad);
        } on ServerException {
          return const Left(ServerFailure(message: "Ошибка сервера"));
        }
      } else {
        try {
          return Right(await localDataSource.load(request));
        } on CacheException {
          return const Left(
              CacheFailure(message: "Ошибка локального хранилища"),);
        }
      }
    } else {
      try {
        return Right(await localDataSource.load(request));
      } on CacheException {
        return const Left(CacheFailure(message: "Ошибка локального хранилища"));
      }
    }
  }
}
