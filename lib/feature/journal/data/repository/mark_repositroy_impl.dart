import 'package:dartz/dartz.dart';
import 'package:studenda_mobile_student/core/data/error/failure.dart';
import 'package:studenda_mobile_student/core/data/repository/repository.dart';
import 'package:studenda_mobile_student/core/network/network_info.dart';
import 'package:studenda_mobile_student/feature/journal/data/datasource/local/mark_local_data_source.dart';
import 'package:studenda_mobile_student/feature/journal/data/datasource/remote/mark_remote_data_source.dart';
import 'package:studenda_mobile_student/feature/journal/data/model/api/mark_request_model.dart';
import 'package:studenda_mobile_student/feature/journal/data/model/task/mark_model.dart';
import 'package:studenda_mobile_student/feature/journal/domain/repository/mark_repository.dart';

class MarkRepositoryImpl implements MarkRepository {
  final MarkRemoteDataSource remoteDataSource;
  final MarkLocalDataSource localDataSource;
  final NetworkInfo networkInfo;

  MarkRepositoryImpl({
    required this.remoteDataSource,
    required this.localDataSource,
    required this.networkInfo,
  });

  @override
  Future<Either<Failure, List<MarkModel>>> load(
    MarkRequestModel request, [
    bool remote = true,
  ]) async {
    return await loadData<MarkLocalDataSource, MarkRemoteDataSource,
        List<MarkModel>, MarkRequestModel>(
      localDataSource,
      remoteDataSource,
      remote,
      request,
      networkInfo,
    );

  }
}
