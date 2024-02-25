import 'package:dartz/dartz.dart';
import 'package:studenda_mobile_student/core/data/error/failure.dart';
import 'package:studenda_mobile_student/core/data/repository/repository.dart';
import 'package:studenda_mobile_student/core/network/network_info.dart';
import 'package:studenda_mobile_student/feature/schedule/data/datasources/local/schedule_local_data_source.dart';
import 'package:studenda_mobile_student/feature/schedule/data/datasources/remote/schedule_remote_data_source.dart';
import 'package:studenda_mobile_student/feature/schedule/data/models/subject_model.dart';
import 'package:studenda_mobile_student/feature/schedule/domain/repositories/schedule_repository.dart';

class ScheduleRepositoryImpl implements ScheduleRepository {
  final ScheduleRemoteDataSource remoteDataSource;
  final ScheduleLocalDataSource localDataSource;
  final NetworkInfo networkInfo;

  ScheduleRepositoryImpl({
    required this.remoteDataSource,
    required this.localDataSource,
    required this.networkInfo,
  });
  @override
  Future<Either<Failure, List<SubjectModel>>> load(
    void request, [
    bool remote = true,
  ]) async {
    return await loadData<
        ScheduleLocalDataSource,
        ScheduleRemoteDataSource,
        List<SubjectModel>,
        void>(localDataSource, remoteDataSource, remote, request, networkInfo);
  }
}
