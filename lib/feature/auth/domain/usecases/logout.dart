import 'package:dartz/dartz.dart';
import 'package:studenda_mobile_student/core/data/error/failure.dart';
import 'package:studenda_mobile_student/core/data/usecases/usecase.dart';
import 'package:studenda_mobile_student/feature/auth/domain/repositories/auth_repository.dart';

class Logout extends Usecase<void,void>{
  final AuthRepository authRepository;

  Logout({required this.authRepository});

  @override
  Future<Either<Failure,void>> call(void request) async {
    return await authRepository.logout();
  }
}
