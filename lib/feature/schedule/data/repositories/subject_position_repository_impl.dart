import 'package:dartz/dartz.dart';
import 'package:studenda_mobile/core/data/error/exception.dart';
import 'package:studenda_mobile/core/data/error/failure.dart';
import 'package:studenda_mobile/core/network/network_info.dart';
import 'package:studenda_mobile/feature/schedule/data/datasources/subject_position_remote_data_source.dart';
import 'package:studenda_mobile/feature/schedule/data/models/subject_position_model.dart';
import 'package:studenda_mobile/feature/schedule/domain/repositories/subject_position_repository.dart';

class SubjectPositionRepositoryImpl implements SubjectPositionRepository{

  final SubjectPositionRemoteDataSource remoteDataSource;
  final NetworkInfo networkInfo;

  SubjectPositionRepositoryImpl({required this.remoteDataSource, required this.networkInfo});
  @override
  Future<Either<Failure, List<SubjectPositionModel>>> load(void request) async {
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
