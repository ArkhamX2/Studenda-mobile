import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:studenda_mobile_student/feature/auth/data/models/token_model.dart';
import 'package:studenda_mobile_student/feature/auth/domain/usecases/get_token.dart';
import 'package:studenda_mobile_student/feature/auth/domain/usecases/refresh_token.dart';

part 'token_cubit.freezed.dart';
part 'token_state.dart';

class TokenCubit extends Cubit<TokenState> {
  final RefreshToken refreshTokenUseCase;
  final GetToken getTokenUseCase;

  TokenCubit({required this.getTokenUseCase, required this.refreshTokenUseCase})
      : super(const TokenState.initial());

  Future<void> logout() async {
    emit(const TokenState.initial());
  }

  Future<void> setToken(TokenModel token) async {
    emit(TokenState.authorized(token));
  }

  Future<void> getToken() async {
    // ignore: void_checks
    final token = await getTokenUseCase.call(() {});
    token.fold(
      (l) => emit(TokenState.fail(l.message)),
      (r) => emit(
        TokenState.tokenSuccess(r),
      ),
    );
  }

  Future<void> refreshToken(TokenModel token) async {
    final newToken = await refreshTokenUseCase(token);
    newToken.fold(
      (l) => emit(
        TokenState.fail(
          l.message,
        ),
      ),
      (r) => emit(
        TokenState.authorized(
          r,
        ),
      ),
    );
  }
}
