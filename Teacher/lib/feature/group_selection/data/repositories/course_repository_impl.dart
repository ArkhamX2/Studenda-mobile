

import 'package:dartz/dartz.dart';
import 'package:studenda_mobile/core/data/error/exception.dart';
import 'package:studenda_mobile/core/data/error/failure.dart';
import 'package:studenda_mobile/core/network/network_info.dart';
import 'package:studenda_mobile/feature/group_selection/data/datasources/course_remote_data_source.dart';
import 'package:studenda_mobile/feature/group_selection/data/models/course_model.dart';
import 'package:studenda_mobile/feature/group_selection/domain/repositories/course_repository.dart';

class CourseRepositoryImpl implements CourseRepository{

  final CourseRemoteDataSource remoteDataSource;
  final NetworkInfo networkInfo;

  CourseRepositoryImpl({required this.remoteDataSource, required this.networkInfo});

  @override
  Future<Either<Failure, List<CourseModel>>> load(void request) async {
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
    return const Left(LoadCoursesFailure(message: "Ошибка загрузки списка курсов"));
  }
  
}
