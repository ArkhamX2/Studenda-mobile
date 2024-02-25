import 'package:dartz/dartz.dart';
import 'package:studenda_mobile_student/core/data/error/exception.dart';
import 'package:studenda_mobile_student/core/data/error/failure.dart';
import 'package:studenda_mobile_student/core/network/network_info.dart';
import 'package:studenda_mobile_student/feature/group_selection/data/datasources/course_local_data_source.dart';
import 'package:studenda_mobile_student/feature/group_selection/data/datasources/course_remote_data_source.dart';
import 'package:studenda_mobile_student/feature/group_selection/data/models/course_model.dart';
import 'package:studenda_mobile_student/feature/group_selection/domain/repositories/course_repository.dart';

class CourseRepositoryImpl implements CourseRepository {
  final CourseRemoteDataSource remoteDataSource;
  final CourseLocalDataSource localDataSource;
  final NetworkInfo networkInfo;

  CourseRepositoryImpl({
    required this.remoteDataSource,
    required this.localDataSource,
    required this.networkInfo,
  });

  @override
  Future<Either<Failure, List<CourseModel>>> load(
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
