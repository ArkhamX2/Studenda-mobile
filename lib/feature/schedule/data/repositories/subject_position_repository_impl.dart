import 'package:dartz/dartz.dart';
import 'package:studenda_mobile_student/core/data/error/exception.dart';
import 'package:studenda_mobile_student/core/data/error/failure.dart';
import 'package:studenda_mobile_student/core/network/network_info.dart';
import 'package:studenda_mobile_student/feature/schedule/data/datasources/local/subject_position_local_data_source.dart';
import 'package:studenda_mobile_student/feature/schedule/data/datasources/remote/subject_position_remote_data_source.dart';
import 'package:studenda_mobile_student/feature/schedule/data/models/subject_position_model.dart';
import 'package:studenda_mobile_student/feature/schedule/domain/repositories/subject_position_repository.dart';

class SubjectPositionRepositoryImpl implements SubjectPositionRepository {
  final SubjectPositionRemoteDataSource remoteDataSource;
  final SubjectPositionLocalDataSource localDataSource;
  final NetworkInfo networkInfo;

  SubjectPositionRepositoryImpl({
    required this.remoteDataSource,
    required this.localDataSource,
    required this.networkInfo,
  });
  @override
  Future<Either<Failure, List<SubjectPositionModel>>> load(
    void request, [
    bool remote = true,
  ]) async {
    if (remote) {
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
          return Right(await localDataSource.load());
        } on CacheException {
          return const Left(
              CacheFailure(message: "Ошибка локального хранилища"),);
        }
      }
    } else {
      try {
        return Right(await localDataSource.load());
      } on CacheException {
        return const Left(CacheFailure(message: "Ошибка локального хранилища"));
      }
    }
  }
}
