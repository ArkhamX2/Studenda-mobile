import 'package:dartz/dartz.dart';
import 'package:studenda_mobile_student/core/data/error/failure.dart';
import 'package:studenda_mobile_student/core/data/usecases/usecase.dart';
import 'package:studenda_mobile_student/feature/auth/data/models/token_model.dart';
import 'package:studenda_mobile_student/feature/auth/domain/repositories/auth_repository.dart';

class RefreshToken extends Usecase<TokenModel,TokenModel>{
  final AuthRepository authRepository;

  RefreshToken({required this.authRepository});

  @override
  Future<Either<Failure,TokenModel>> call(TokenModel refreshToken) async{
    return await authRepository.refreshToken(refreshToken);
  }
}
