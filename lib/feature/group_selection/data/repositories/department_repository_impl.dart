import 'package:dartz/dartz.dart';
import 'package:studenda_mobile_student/core/data/error/exception.dart';
import 'package:studenda_mobile_student/core/data/error/failure.dart';
import 'package:studenda_mobile_student/core/network/network_info.dart';
import 'package:studenda_mobile_student/feature/group_selection/data/datasources/department_local_data_source.dart';
import 'package:studenda_mobile_student/feature/group_selection/data/datasources/department_remote_data_source.dart';
import 'package:studenda_mobile_student/feature/group_selection/data/models/department_model.dart';
import 'package:studenda_mobile_student/feature/group_selection/domain/repositories/department_repository.dart';

class DepartmentRepositoryImpl implements DepartmentRepository{

  final DepartmentRemoteDataSource remoteDataSource;
  final DepartmentLocalDataSource localDataSource;
  final NetworkInfo networkInfo;

  DepartmentRepositoryImpl({required this.remoteDataSource, required this.localDataSource, required this.networkInfo});

  @override
  Future<Either<Failure, List<DepartmentModel>>> load(void request) async {
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
    return const Left(LoadDepartmentsFailure(message: "Ошибка загрузки списка курсов"));
  }
  
}
