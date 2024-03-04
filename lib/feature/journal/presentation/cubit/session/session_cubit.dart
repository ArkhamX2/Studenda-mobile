import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:studenda_mobile_student/feature/journal/data/model/api/session_request_model.dart';
import 'package:studenda_mobile_student/feature/journal/data/model/attendancy/session_model.dart';
import 'package:studenda_mobile_student/feature/journal/domain/usecases/get_session_list.dart';

part 'session_state.dart';
part 'session_cubit.freezed.dart';

class SessionCubit extends Cubit<SessionState> {
  final GetSessionList loadSession;

  List<SessionModel> sessionList = [];

  SessionCubit(this.loadSession) : super(const SessionState.initial());

  Future<void> load(
      SessionRequestModel request,) async {
    final courses = await loadSession(request);
    courses.fold(
      (l) => emit(SessionState.loadingFail(l.message)),
      (r) {
        sessionList = r;
        emit(
          SessionState.loadingSuccess(
            sessionList,
          ),
        );
      },
    );
  }

  Future<void> loadLocally(
      SessionRequestModel request,) async {
    final courses = await loadSession(request,false);
    courses.fold(
      (l) => emit(SessionState.loadingFail(l.message)),
      (r) {
        sessionList = r;
        emit(
          SessionState.loadingSuccess(
            sessionList,
          ),
        );
      },
    );
  }
}
