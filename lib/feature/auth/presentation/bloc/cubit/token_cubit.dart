import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:studenda_mobile_student/feature/auth/data/models/token_model.dart';
import 'package:studenda_mobile_student/feature/auth/domain/usecases/refresh_token.dart';

part 'token_cubit.freezed.dart';
part 'token_state.dart';

class TokenCubit extends Cubit<TokenState> {
  final RefreshToken refreshTokenUseCase;

  TokenCubit({required this.refreshTokenUseCase})
      : super(const TokenState.initial());

  void logout() {
    emit(const TokenState.initial());
  }

  void setToken(TokenModel token) {
    emit(TokenState.authorized(token));
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
