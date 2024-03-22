import 'package:flutter_test/flutter_test.dart';
import 'package:studenda_mobile_student/core/utils/email_validator.dart';

main() {
  group("EmailValidation", () {
    test("Email validation success", () {
      //Arrange
      const String email = "test@test.ru";
      //Act
      final String? value = studendaEmailValidator(email);
      //Assert
      expect(value, null);
    });
    test("Email validation fail with no '.com' pattern", () {
      //Arrange
      const String email = "test@test";
      //Act
      final String? value = studendaEmailValidator(email);
      //Assert
      expect(value, "Введён некорректный email");
    });
    test("Email validation fail with no '@' pattern", () {
      //Arrange
      const String email = "testtest.ru";
      //Act
      final String? value = studendaEmailValidator(email);
      //Assert
      expect(value, "Введён некорректный email");
    });
    test("Email validation fail with no '@' and '.com' pattern", () {
      //Arrange
      const String email = "testtestru";
      //Act
      final String? value = studendaEmailValidator(email);
      //Assert
      expect(value, "Введён некорректный email");
    });
  });
}

