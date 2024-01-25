import 'package:dartz/dartz.dart';
import 'package:studenda_mobile/core/data/error/exception.dart';
import 'package:studenda_mobile/core/data/error/failure.dart';
import 'package:studenda_mobile/core/network/network_info.dart';
import 'package:studenda_mobile/feature/schedule/data/datasources/discipline_remote_data_source.dart';
import 'package:studenda_mobile/feature/schedule/data/models/discipline_model.dart';
import 'package:studenda_mobile/feature/schedule/domain/repositories/discipline_repository.dart';

class DisciplineRepositoryImpl implements DisciplineRepository{

  final DisciplineRemoteDataSource remoteDataSource;
  final NetworkInfo networkInfo;

  DisciplineRepositoryImpl({required this.remoteDataSource, required this.networkInfo});
  @override
  Future<Either<Failure, List<DisciplineModel>>> load(List<int> request) async {
    if(request.isEmpty) return const Right([]);
    if( await networkInfo.isConnected ){
      try{
        final remoteLoad = await remoteDataSource.load(request);
        //TODO: localdatasource cache
        return Right(remoteLoad);
      } on ServerException{
        return const Left(ServerFailure(message: "Ошибка сервера"));
      }
    } else{
      //TODO: get data from cache
    }
    return const Left(LoadWeekTypeFailure(message: "Ошибка загрузки дисциплин"));
  }

}
