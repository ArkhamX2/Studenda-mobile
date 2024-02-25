import 'package:dartz/dartz.dart';
import 'package:studenda_mobile_student/core/data/error/failure.dart';
import 'package:studenda_mobile_student/core/data/repository/repository.dart';
import 'package:studenda_mobile_student/core/network/network_info.dart';
import 'package:studenda_mobile_student/feature/schedule/data/datasources/local/subject_type_local_data_source.dart';
import 'package:studenda_mobile_student/feature/schedule/data/datasources/remote/subject_type_remote_data_source.dart';
import 'package:studenda_mobile_student/feature/schedule/data/models/subject_type_model.dart';
import 'package:studenda_mobile_student/feature/schedule/domain/repositories/subject_type_repository.dart';

class SubjectTypeRepositoryImpl implements SubjectTypeRepository {
  final SubjectTypeRemoteDataSource remoteDataSource;
  final SubjectTypeLocalDataSource localDataSource;
  final NetworkInfo networkInfo;

  SubjectTypeRepositoryImpl({
    required this.remoteDataSource,
    required this.localDataSource,
    required this.networkInfo,
  });
  @override
  Future<Either<Failure, List<SubjectTypeModel>>> load(
    void request, [
    bool remote = true,
  ]) async {
    return await loadData<
        SubjectTypeLocalDataSource,
        SubjectTypeRemoteDataSource,
        List<SubjectTypeModel>,
        void>(localDataSource, remoteDataSource, remote, request, networkInfo);
  }
}
