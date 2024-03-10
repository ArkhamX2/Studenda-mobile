import 'package:dartz/dartz.dart';
import 'package:studenda_mobile_student/core/data/error/failure.dart';
import 'package:studenda_mobile_student/core/data/repository/repository.dart';
import 'package:studenda_mobile_student/core/network/network_info.dart';
import 'package:studenda_mobile_student/feature/journal/data/datasource/local/session_local_data_source.dart';
import 'package:studenda_mobile_student/feature/journal/data/datasource/remote/session_remote_data_source.dart';
import 'package:studenda_mobile_student/feature/journal/data/model/api/session_request_model.dart';
import 'package:studenda_mobile_student/feature/journal/data/model/attendancy/session_model.dart';
import 'package:studenda_mobile_student/feature/journal/domain/repository/session_repository.dart';

class SessionRepositoryImpl implements SessionRepository {
  final SessionRemoteDataSource remoteDataSource;
  final SessionLocalDataSource localDataSource;
  final NetworkInfo networkInfo;

  SessionRepositoryImpl({
    required this.remoteDataSource,
    required this.localDataSource,
    required this.networkInfo,
  });

  @override
  Future<Either<Failure, List<SessionModel>>> loadStudent(
    SessionRequestModel request, [
    bool remote = true,
  ]) async {
    return await loadStudentData<SessionLocalDataSource, SessionRemoteDataSource,
        List<SessionModel>, SessionRequestModel>(
      localDataSource,
      remoteDataSource,
      remote,
      request,
      networkInfo,
    );

  }
  
  @override
  Future<Either<Failure, List<SessionModel>>> loadTeacher(SessionRequestModel request, [bool remote = true]) {
    // TODO: implement loadTeacher
    throw UnimplementedError();
  }
}
