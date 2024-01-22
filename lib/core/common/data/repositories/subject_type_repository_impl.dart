import 'package:dartz/dartz.dart';
import 'package:studenda_mobile/core/common/data/datasources/subject_type_remote_data_source.dart';
import 'package:studenda_mobile/core/common/data/model/subject_type_model.dart';
import 'package:studenda_mobile/core/common/domain/repositories/subject_type_repository.dart';
import 'package:studenda_mobile/core/data/error/exception.dart';
import 'package:studenda_mobile/core/data/error/failure.dart';
import 'package:studenda_mobile/core/network/network_info.dart';

class SubjectTypeRepositoryImpl implements SubjectTypeRepository{

  final SubjectTypeRemoteDataSource remoteDataSource;
  final NetworkInfo networkInfo;

  SubjectTypeRepositoryImpl({required this.remoteDataSource, required this.networkInfo});
  @override
  Future<Either<Failure, List<SubjectTypeModel>>> load(List<int> request) async {
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
    return const Left(LoadWeekTypeFailure(message: "Ошибка загрузки типов занятий"));
  }

}
