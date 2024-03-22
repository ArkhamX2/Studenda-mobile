import 'package:flutter_test/flutter_test.dart';
import 'package:studenda_mobile_student/core/utils/get_current_academic_year.dart';

main() {
  group("Current academic year", () {
    test("On the first day of January should be the prev calendar", () {
      //Arrange
      final DateTime date = DateTime(2023);
      const int expected = 2022;
      //Act
      final int result = getCurrentAcademicYear(date);
      //Assert
      expect(result, expected);
    });
    test("On the first day of August should be the cur calendar", () {
      //Arrange
      final DateTime date = DateTime(2023,8);
      const int expected = 2023;
      //Act
      final int result = getCurrentAcademicYear(date);
      //Assert
      expect(result, expected);
    });
  });
}
