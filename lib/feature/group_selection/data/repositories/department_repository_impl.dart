import 'package:dartz/dartz.dart';
import 'package:studenda_mobile_student/core/data/error/exception.dart';
import 'package:studenda_mobile_student/core/data/error/failure.dart';
import 'package:studenda_mobile_student/core/data/repository/repository.dart';
import 'package:studenda_mobile_student/core/network/network_info.dart';
import 'package:studenda_mobile_student/feature/group_selection/data/datasources/department_local_data_source.dart';
import 'package:studenda_mobile_student/feature/group_selection/data/datasources/department_remote_data_source.dart';
import 'package:studenda_mobile_student/feature/group_selection/data/models/department_model.dart';
import 'package:studenda_mobile_student/feature/group_selection/domain/repositories/department_repository.dart';

class DepartmentRepositoryImpl implements DepartmentRepository {
  final DepartmentRemoteDataSource remoteDataSource;
  final DepartmentLocalDataSource localDataSource;
  final NetworkInfo networkInfo;

  DepartmentRepositoryImpl({
    required this.remoteDataSource,
    required this.localDataSource,
    required this.networkInfo,
  });

  @override
  Future<Either<Failure, List<DepartmentModel>>> load(
    void request, [
    bool remote = true,
  ]) async {
    return await loadData<
        DepartmentLocalDataSource,
        DepartmentRemoteDataSource,
        List<DepartmentModel>,
        void>(localDataSource, remoteDataSource, remote, request, networkInfo);
  }
}
