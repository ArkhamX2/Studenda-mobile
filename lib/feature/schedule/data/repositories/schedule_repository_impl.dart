import 'package:dartz/dartz.dart';
import 'package:studenda_mobile_student/core/data/error/exception.dart';
import 'package:studenda_mobile_student/core/data/error/failure.dart';
import 'package:studenda_mobile_student/core/network/network_info.dart';
import 'package:studenda_mobile_student/feature/schedule/data/datasources/local/schedule_local_data_source.dart';
import 'package:studenda_mobile_student/feature/schedule/data/datasources/remote/schedule_remote_data_source.dart';
import 'package:studenda_mobile_student/feature/schedule/data/models/schedule_request_model.dart';
import 'package:studenda_mobile_student/feature/schedule/data/models/subject_model.dart';
import 'package:studenda_mobile_student/feature/schedule/domain/repositories/schedule_repository.dart';

class ScheduleRepositoryImpl implements ScheduleRepository {
  final ScheduleRemoteDataSource remoteDataSource;
  final ScheduleLocalDataSource localDataSource;
  final NetworkInfo networkInfo;

  ScheduleRepositoryImpl({
    required this.remoteDataSource,
    required this.localDataSource,
    required this.networkInfo,
  });
  @override
  Future<Either<Failure, List<SubjectModel>>> load(
    ScheduleRequestModel request, [
    bool remote = true,
  ]) async {
    if (remote) {
      if (await networkInfo.isConnected) {
        try {
          final remoteLoad = await remoteDataSource.load(request);
          await localDataSource.add(remoteLoad);
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
