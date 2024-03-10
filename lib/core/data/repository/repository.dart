import 'package:dartz/dartz.dart';
import 'package:studenda_mobile_student/core/data/datasource/datasource.dart';
import 'package:studenda_mobile_student/core/data/error/exception.dart';
import 'package:studenda_mobile_student/core/data/error/failure.dart';
import 'package:studenda_mobile_student/core/network/network_info.dart';

Future<Either<Failure, ResponseType>> loadStudentData<Local extends LocalDataSource,
    Remote extends RemoteDataSource, ResponseType, RequestType>(
  Local localDataSource,
  Remote remoteDataSource,
  bool remote,
  RequestType request,
  NetworkInfo networkInfo,
) async {
  if (!(await networkInfo.isConnected && remote)) {try {
      return Right(await localDataSource.studentLoad(request) as ResponseType);
    } on CacheException {
      return const Left(
        CacheFailure(message: "Ошибка локального хранилища"),
      );
    }
  } else {
    try {
      final remoteLoad = await remoteDataSource.studentLoad(request) as ResponseType;
      await localDataSource.add(remoteLoad);
      return Right(await localDataSource.studentLoad(request) as ResponseType);
    } on ServerException {
      return const Left(ServerFailure(message: "Ошибка сервера"));
    } on AuthException {
      return const Left(AuthFailure(message: "Ошибка авторизации"));
    }
  }
}

Future<Either<Failure, ResponseType>> loadTeacherData<Local extends LocalDataSource,
    Remote extends RemoteDataSource, ResponseType, RequestType>(
  Local localDataSource,
  Remote remoteDataSource,
  bool remote,
  RequestType request,
  NetworkInfo networkInfo,
) async {
  if (!(await networkInfo.isConnected && remote)) {try {
      return Right(await localDataSource.teacherLoad(request) as ResponseType);
    } on CacheException {
      return const Left(
        CacheFailure(message: "Ошибка локального хранилища"),
      );
    }
  } else {
    try {
      final remoteLoad = await remoteDataSource.teacherLoad(request) as ResponseType;
      await localDataSource.add(remoteLoad);
      return Right(await localDataSource.teacherLoad(request) as ResponseType);
    } on ServerException {
      return const Left(ServerFailure(message: "Ошибка сервера"));
    } on AuthException {
      return const Left(AuthFailure(message: "Ошибка авторизации"));
    }
  }
}
