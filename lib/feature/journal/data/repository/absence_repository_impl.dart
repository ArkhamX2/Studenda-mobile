import 'package:dartz/dartz.dart';
import 'package:studenda_mobile_student/core/data/error/failure.dart';
import 'package:studenda_mobile_student/core/data/repository/repository.dart';
import 'package:studenda_mobile_student/core/network/network_info.dart';
import 'package:studenda_mobile_student/feature/journal/data/datasource/local/absence_local_data_source.dart';
import 'package:studenda_mobile_student/feature/journal/data/datasource/remote/absence_remote_data_source.dart';
import 'package:studenda_mobile_student/feature/journal/data/model/api/absence_request_model.dart';
import 'package:studenda_mobile_student/feature/journal/data/model/attendancy/absence_model.dart';
import 'package:studenda_mobile_student/feature/journal/domain/repository/absence_repository.dart';

class AbsenceRepositoryImpl implements AbsenceRepository {
  final AbsenceRemoteDataSource remoteDataSource;
  final AbsenceLocalDataSource localDataSource;
  final NetworkInfo networkInfo;

  AbsenceRepositoryImpl({
    required this.remoteDataSource,
    required this.localDataSource,
    required this.networkInfo,
  });

  @override
  Future<Either<Failure, List<AbsenceModel>>> load(
    AbsenceRequestModel request, [
    bool remote = true,
  ]) async {
    return await loadData<AbsenceLocalDataSource, AbsenceRemoteDataSource,
            List<AbsenceModel>, AbsenceRequestModel>(
        localDataSource, remoteDataSource, remote, request, networkInfo,);
  }
}
