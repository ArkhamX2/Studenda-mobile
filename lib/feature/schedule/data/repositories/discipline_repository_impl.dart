import 'package:dartz/dartz.dart';
import 'package:studenda_mobile_student/core/data/error/failure.dart';
import 'package:studenda_mobile_student/core/data/repository/repository.dart';
import 'package:studenda_mobile_student/core/network/network_info.dart';
import 'package:studenda_mobile_student/feature/schedule/data/datasources/local/discipline_local_data_source.dart';
import 'package:studenda_mobile_student/feature/schedule/data/datasources/remote/discipline_remote_data_source.dart';
import 'package:studenda_mobile_student/feature/schedule/data/models/discipline_model.dart';
import 'package:studenda_mobile_student/feature/schedule/domain/repositories/discipline_repository.dart';

class DisciplineRepositoryImpl implements DisciplineRepository {
  final DisciplineRemoteDataSource remoteDataSource;
  final DisciplineLocalDataSource localDataSource;
  final NetworkInfo networkInfo;

  DisciplineRepositoryImpl({
    required this.remoteDataSource,
    required this.localDataSource,
    required this.networkInfo,
  });
  @override
  Future<Either<Failure, List<DisciplineModel>>> load(
    void request, [
    bool remote = true,
  ]) async {
    return await loadStudentData<
        DisciplineLocalDataSource,
        DisciplineRemoteDataSource,
        List<DisciplineModel>,
        void>(localDataSource, remoteDataSource, remote, request, networkInfo);
  }
}
