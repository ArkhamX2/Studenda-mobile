import 'package:dartz/dartz.dart';
import 'package:studenda_mobile_student/core/data/error/failure.dart';
import 'package:studenda_mobile_student/core/data/repository/repository.dart';
import 'package:studenda_mobile_student/core/network/network_info.dart';
import 'package:studenda_mobile_student/feature/schedule/data/datasources/local/subject_position_local_data_source.dart';
import 'package:studenda_mobile_student/feature/schedule/data/datasources/remote/subject_position_remote_data_source.dart';
import 'package:studenda_mobile_student/feature/schedule/data/models/subject_position_model.dart';
import 'package:studenda_mobile_student/feature/schedule/domain/repositories/subject_position_repository.dart';

class SubjectPositionRepositoryImpl implements SubjectPositionRepository {
  final SubjectPositionRemoteDataSource remoteDataSource;
  final SubjectPositionLocalDataSource localDataSource;
  final NetworkInfo networkInfo;

  SubjectPositionRepositoryImpl({
    required this.remoteDataSource,
    required this.localDataSource,
    required this.networkInfo,
  });
  @override
  Future<Either<Failure, List<SubjectPositionModel>>> load(
    void request, [
    bool remote = true,
  ]) async {
    return await loadData<
        SubjectPositionLocalDataSource,
        SubjectPositionRemoteDataSource,
        List<SubjectPositionModel>,
        void>(localDataSource, remoteDataSource, remote, request, networkInfo);
  }
}
