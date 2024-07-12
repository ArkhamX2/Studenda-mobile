
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:studenda_mobile_student/feature/auth/data/models/security_request_model.dart';
import 'package:studenda_mobile_student/feature/auth/data/models/security_response_model.dart';
import 'package:studenda_mobile_student/feature/auth/data/models/user_model/account_model.dart';
import 'package:studenda_mobile_student/feature/auth/domain/repositories/auth_repository.dart';
import 'package:studenda_mobile_student/feature/auth/domain/usecases/auth.dart';

class MockAuthRepositroy extends Mock implements AuthRepository {}

void main() {
  late Auth usecase;
  late MockAuthRepositroy mockAuthRepositroy;
  late SecurityResponseModel testSecurityResponse;
  late SecurityRequestModel testSecurityRequest;

  setUp(() {
    mockAuthRepositroy = MockAuthRepositroy();
    usecase = Auth(authRepository: mockAuthRepositroy);
    testSecurityResponse = SecurityResponseModel(
    token: "qwerty",
    user: AccountModel(
      groupId: -1,
      id: -1,
      identityId: "identityId",
      name: "name",
      patronymic: "patronymic",
      surname: "surname",
    ),
  );

  testSecurityRequest = const SecurityRequestModel(
    email: "test@test.com",
    password: "password",
    roleName: "rolename",
  );
  });


  test('should auth', () async {
    //arrange
    when(
      mockAuthRepositroy.auth(testSecurityRequest),
    ).thenAnswer((realInvocation) async => Right(testSecurityResponse));
    //act
    final result = await usecase.call(testSecurityRequest);
    //assert
    expect(result, Right(testSecurityResponse));
  });
}
