import 'package:http/http.dart' as http;
import 'package:mockito/annotations.dart';
import 'package:studenda_mobile_student/feature/auth/domain/repositories/auth_repository.dart';

@GenerateMocks(
  [
    AuthRepository,
  ],
  customMocks: [MockSpec<http.Client>(as: #MockHttpclient)],
)
void main() {}
