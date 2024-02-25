import 'package:dartz/dartz.dart';
import 'package:studenda_mobile_student/core/data/error/failure.dart';
import 'package:studenda_mobile_student/core/data/repository/repository.dart';
import 'package:studenda_mobile_student/core/network/network_info.dart';
import 'package:studenda_mobile_student/feature/auth/data/models/user_model/user_model.dart';
import 'package:studenda_mobile_student/feature/schedule/data/datasources/local/teacher_local_data_source.dart';
import 'package:studenda_mobile_student/feature/schedule/data/datasources/remote/teacher_remote_data_source.dart';
import 'package:studenda_mobile_student/feature/schedule/domain/repositories/teacher_repository.dart';

class TeacherRepositoryImpl implements TeacherRepository {
  final TeacherRemoteDataSource remoteDataSource;
  final TeacherLocalDataSource localDataSource;
  final NetworkInfo networkInfo;

  TeacherRepositoryImpl({
    required this.remoteDataSource,
    required this.localDataSource,
    required this.networkInfo,
  });
  @override
  Future<Either<Failure, List<UserModel>>> load(
    void request, [
    bool remote = true,
  ]) async {
    return await loadData<
        TeacherLocalDataSource,
        TeacherRemoteDataSource,
        List<UserModel>,
        void>(localDataSource, remoteDataSource, remote, request, networkInfo);
  }
}
