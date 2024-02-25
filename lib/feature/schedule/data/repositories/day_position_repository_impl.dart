import 'package:dartz/dartz.dart';
import 'package:studenda_mobile_student/core/data/error/failure.dart';
import 'package:studenda_mobile_student/core/data/repository/repository.dart';
import 'package:studenda_mobile_student/core/network/network_info.dart';
import 'package:studenda_mobile_student/feature/schedule/data/datasources/local/day_position_local_data_source.dart';
import 'package:studenda_mobile_student/feature/schedule/data/datasources/remote/day_position_remote_data_source.dart';
import 'package:studenda_mobile_student/feature/schedule/data/models/day_position_model.dart';
import 'package:studenda_mobile_student/feature/schedule/domain/repositories/day_position_repository.dart';

class DayPositionRepositoryImpl implements DayPositionRepository {
  final DayPositionRemoteDataSource remoteDataSource;
  final DayPositionLocalDataSource localDataSource;
  final NetworkInfo networkInfo;

  DayPositionRepositoryImpl({
    required this.remoteDataSource,
    required this.localDataSource,
    required this.networkInfo,
  });
  @override
  Future<Either<Failure, List<DayPositionModel>>> load(
    void request, [
    bool remote = true,
  ]) async {
    return await loadData<
        DayPositionLocalDataSource,
        DayPositionRemoteDataSource,
        List<DayPositionModel>,
        void>(localDataSource, remoteDataSource, remote, request, networkInfo);
  }
}
