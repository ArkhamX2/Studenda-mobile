import 'package:dartz/dartz.dart';
import 'package:studenda_mobile_student/core/data/error/failure.dart';
import 'package:studenda_mobile_student/core/data/usecases/usecase.dart';
import 'package:studenda_mobile_student/feature/journal/data/model/api/session_request_model.dart';
import 'package:studenda_mobile_student/feature/journal/data/model/attendancy/session_model.dart';
import 'package:studenda_mobile_student/feature/journal/domain/repository/session_repository.dart';

class GetSessionList extends Usecase<List<SessionModel>, SessionRequestModel> {
  final SessionRepository sessionListRepository;

  GetSessionList({required this.sessionListRepository});

  @override
  Future<Either<Failure, List<SessionModel>>> call(
    SessionRequestModel request, [
    bool remote = true,
  ]) async {
    return await sessionListRepository.load(request, remote);
  }
}
