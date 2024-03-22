import 'package:flutter_test/flutter_test.dart';
import 'package:studenda_mobile_student/core/utils/verification_code_validator.dart';

main() {
  group("CodeValidation", () {
    test("Code validation success", () {
      //Arrange
      const String code = "12345";
      //Act
      final String? value = verificationCodeValidator(code);
      //Assert
      expect(value, null);
    });
    test("Code validation fail with less characters", () {
      //Arrange
      const String code = "1234";
      //Act
      final String? value = verificationCodeValidator(code);
      //Assert
      expect(value, "Неверный код");
    });
    test("Code validation fail with more characters", () {
      //Arrange
      const String code = "123456";
      //Act
      final String? value = verificationCodeValidator(code);
      //Assert
      expect(value, "Неверный код");
    });
    test("Code validation fail with not numbers in it", () {
      //Arrange
      const String code = "qwert";
      //Act
      final String? value = verificationCodeValidator(code);
      //Assert
      expect(value, "Неверный код");
    });
  });
}
