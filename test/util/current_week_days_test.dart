import 'package:flutter_test/flutter_test.dart';
import 'package:studenda_mobile_student/core/utils/get_current_week_days.dart';

main() {
  group("GetCurrentWeekDays", () {
    test("on Monday 26.02.2024", () {
      //Arrange
      final DateTime date = DateTime(2024, 2, 26);
      final List<String> expected = ["26", "27", "28", "29", "1", "2"];
      //Act
      final List<String> result = getCurrentWeekSixDays(date);
      //Assert
      expect(result, expected);
    });
    test("on Tuesday 27.02.2024", () {
      //Arrange
      final DateTime date = DateTime(2024, 2, 27);
      final List<String> expected = ["26", "27", "28", "29", "1", "2"];
      //Act
      final List<String> result = getCurrentWeekSixDays(date);
      //Assert
      expect(result, expected);
    });
    test("on Wednesday 28.02.2024", () {
      //Arrange
      final DateTime date = DateTime(2024, 2, 28);
      final List<String> expected = ["26", "27", "28", "29", "1", "2"];
      //Act
      final List<String> result = getCurrentWeekSixDays(date);
      //Assert
      expect(result, expected);
    });
    test("on Thursday 29.02.2024", () {
      //Arrange
      final DateTime date = DateTime(2024, 2, 29);
      final List<String> expected = ["26", "27", "28", "29", "1", "2"];
      //Act
      final List<String> result = getCurrentWeekSixDays(date);
      //Assert
      expect(result, expected);
    });
    test("on Friday 01.03.2024", () {
      //Arrange
      final DateTime date = DateTime(2024, 3);
      final List<String> expected = ["26", "27", "28", "29", "1", "2"];
      //Act
      final List<String> result = getCurrentWeekSixDays(date);
      //Assert
      expect(result, expected);
    });
    test("on Saturday 02.02.2024", () {
      //Arrange
      final DateTime date = DateTime(2024, 3, 2);
      final List<String> expected = ["26", "27", "28", "29", "1", "2"];
      //Act
      final List<String> result = getCurrentWeekSixDays(date);
      //Assert
      expect(result, expected);
    });
    test("on Sunday 03.02.2024", () {
      //Arrange
      final DateTime date = DateTime(2024, 3, 3);
      final List<String> expected = ["26", "27", "28", "29", "1", "2"];
      //Act
      final List<String> result = getCurrentWeekSixDays(date);
      //Assert
      expect(result, expected);
    });
  });

  group("GetCurrentWeekDaysWithMonths", () {
    test("on Monday 26.02.2024", () {
      //Arrange
      final DateTime date = DateTime(2024, 2, 26);
      final List<String> expected = ["26 февраля", "27 февраля", "28 февраля", "29 февраля", "1 марта", "2 марта"];
      //Act
      final List<String> result = getCurrentWeekSixDaysWithMonth(date);
      //Assert
      expect(result, expected);
    });
    test("on Tuesday 27.02.2024", () {
      //Arrange
      final DateTime date = DateTime(2024, 2, 27);
      final List<String> expected = ["26 февраля", "27 февраля", "28 февраля", "29 февраля", "1 марта", "2 марта"];
      //Act
      final List<String> result = getCurrentWeekSixDaysWithMonth(date);
      //Assert
      expect(result, expected);
    });
    test("on Wednesday 28.02.2024", () {
      //Arrange
      final DateTime date = DateTime(2024, 2, 28);
      final List<String> expected = ["26 февраля", "27 февраля", "28 февраля", "29 февраля", "1 марта", "2 марта"];
      //Act
      final List<String> result = getCurrentWeekSixDaysWithMonth(date);
      //Assert
      expect(result, expected);
    });
    test("on Thursday 29.02.2024", () {
      //Arrange
      final DateTime date = DateTime(2024, 2, 29);
      final List<String> expected = ["26 февраля", "27 февраля", "28 февраля", "29 февраля", "1 марта", "2 марта"];
      //Act
      final List<String> result = getCurrentWeekSixDaysWithMonth(date);
      //Assert
      expect(result, expected);
    });
    test("on Friday 01.03.2024", () {
      //Arrange
      final DateTime date = DateTime(2024, 3);
      final List<String> expected = ["26 февраля", "27 февраля", "28 февраля", "29 февраля", "1 марта", "2 марта"];
      //Act
      final List<String> result = getCurrentWeekSixDaysWithMonth(date);
      //Assert
      expect(result, expected);
    });
    test("on Saturday 02.02.2024", () {
      //Arrange
      final DateTime date = DateTime(2024, 3, 2);
      final List<String> expected = ["26 февраля", "27 февраля", "28 февраля", "29 февраля", "1 марта", "2 марта"];
      //Act
      final List<String> result = getCurrentWeekSixDaysWithMonth(date);
      //Assert
      expect(result, expected);
    });
    test("on Sunday 03.02.2024", () {
      //Arrange
      final DateTime date = DateTime(2024, 3, 3);
      final List<String> expected = ["26 февраля", "27 февраля", "28 февраля", "29 февраля", "1 марта", "2 марта"];
      //Act
      final List<String> result = getCurrentWeekSixDaysWithMonth(date);
      //Assert
      expect(result, expected);
    });
  });
}

// import 'package:flutter_test/flutter_test.dart';

// main(){
//   test("Name of the test", (){
//     //Arrange
//     int expected = 1;
//     //Act

//     //Assert
//     expect(1,1);
//   });
// }
