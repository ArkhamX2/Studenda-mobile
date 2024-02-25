import 'package:dartz/dartz.dart';
import 'package:studenda_mobile_student/core/data/datasource/datasource.dart';
import 'package:studenda_mobile_student/core/data/error/exception.dart';
import 'package:studenda_mobile_student/core/data/error/failure.dart';
import 'package:studenda_mobile_student/core/network/network_info.dart';

Future<Either<Failure, ResponseType>> loadData<Local extends LocalDataSource,
    Remote extends RemoteDataSource, ResponseType, RequestType>(
  Local localDataSource,
  Remote remoteDataSource,
  bool remote,
  RequestType request,
  NetworkInfo networkInfo,
) async {
  if (await networkInfo.isConnected && remote) {
    try {
      final remoteLoad = await remoteDataSource.load(request);
      await localDataSource.add(remoteLoad);
      return Right(await localDataSource.load(request) as ResponseType);
    } on ServerException {
      return const Left(ServerFailure(message: "Ошибка сервера"));
    }
  } else {
    try {
      return Right(await localDataSource.load(request) as ResponseType);
    } on CacheException {
      return const Left(
        CacheFailure(message: "Ошибка локального хранилища"),
      );
    }
  }
}
