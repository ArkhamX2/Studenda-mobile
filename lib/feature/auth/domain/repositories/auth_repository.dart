import 'package:dartz/dartz.dart';
import 'package:studenda_mobile_student/core/data/error/failure.dart';
import 'package:studenda_mobile_student/feature/auth/data/models/security_request_model.dart';
import 'package:studenda_mobile_student/feature/auth/data/models/security_response_model.dart';
import 'package:studenda_mobile_student/feature/auth/data/models/token_model.dart';

abstract class AuthRepository{
  Future<Either<Failure,SecurityResponseModel>> auth(SecurityRequestModel request);
  Future<Either<Failure,TokenModel>> getToken();
  Future<Either<Failure,void>> logout();
}
