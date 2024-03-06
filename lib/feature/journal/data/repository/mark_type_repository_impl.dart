import 'package:dartz/dartz.dart';
import 'package:studenda_mobile_student/core/data/error/failure.dart';
import 'package:studenda_mobile_student/core/data/repository/repository.dart';
import 'package:studenda_mobile_student/core/network/network_info.dart';
import 'package:studenda_mobile_student/feature/journal/data/datasource/local/mark_type_local_data_source.dart';
import 'package:studenda_mobile_student/feature/journal/data/datasource/remote/mark_type_remote_data_source.dart';
import 'package:studenda_mobile_student/feature/journal/data/model/task/mark_type_model.dart';
import 'package:studenda_mobile_student/feature/journal/domain/repository/mark_type_repository.dart';

class MarkTypeRepositoryImpl implements MarkTypeRepository {
  final MarkTypeRemoteDataSource remoteDataSource;
  final MarkTypeLocalDataSource localDataSource;
  final NetworkInfo networkInfo;

  MarkTypeRepositoryImpl({
    required this.remoteDataSource,
    required this.localDataSource,
    required this.networkInfo,
  });

  @override
  Future<Either<Failure, List<MarkTypeModel>>> load(
    void request, [
    bool remote = true,
  ]) async {
    return await loadData<MarkTypeLocalDataSource,
        MarkTypeRemoteDataSource, List<MarkTypeModel>, void>(
      localDataSource,
      remoteDataSource,
      remote,
      request,
      networkInfo,
    );

  }
}
