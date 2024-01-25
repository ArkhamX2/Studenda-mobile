import 'package:dartz/dartz.dart';
import 'package:studenda_mobile/core/data/error/exception.dart';
import 'package:studenda_mobile/core/data/error/failure.dart';
import 'package:studenda_mobile/core/network/network_info.dart';
import 'package:studenda_mobile/feature/schedule/data/datasources/week_type_remote_data_source.dart';
import 'package:studenda_mobile/feature/schedule/data/models/week_type_model.dart';
import 'package:studenda_mobile/feature/schedule/domain/repositories/week_type_repository.dart';

class WeekTypeRepositoryImpl implements WeekTypeRepository{

  final WeekTypeRemoteDataSource remoteDataSource;
  final NetworkInfo networkInfo;

  WeekTypeRepositoryImpl({required this.remoteDataSource, required this.networkInfo});
  @override
  Future<Either<Failure, WeekTypeModel>> getCurrent(void request) async {
    if( await networkInfo.isConnected ){
      try{
        final remoteLoad = await remoteDataSource.getCurrent(request);
        //TODO: localdatasource cache
        return Right(remoteLoad);
      } on ServerException{
        return const Left(ServerFailure(message: "Ошибка сервера"));
      }
    } else{
      //TODO: get data from cache
    }
    return const Left(LoadWeekTypeFailure(message: "Ошибка загрузки текущего типа недели"));
  }
  
  @override
  Future<Either<Failure, List<WeekTypeModel>>> getAll(void request) async {
    if( await networkInfo.isConnected ){
      try{
        final remoteLoad = await remoteDataSource.getAll(request);
        //TODO: localdatasource cache
        return Right(remoteLoad);
      } on ServerException{
        return const Left(ServerFailure(message: "Ошибка сервера"));
      }
    } else{
      //TODO: get data from cache
    }
    return const Left(LoadWeekTypeFailure(message: "Ошибка загрузки типов недели"));
  }

}
