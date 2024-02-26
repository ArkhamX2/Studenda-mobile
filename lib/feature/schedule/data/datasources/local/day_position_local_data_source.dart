import 'package:hive/hive.dart';
import 'package:studenda_mobile_student/core/data/datasource/datasource.dart';
import 'package:studenda_mobile_student/core/data/error/exception.dart';
import 'package:studenda_mobile_student/feature/schedule/data/models/day_position_model.dart';

class DayPositionLocalDataSource
    extends LocalDataSource<List<DayPositionModel>, void> {
  Box<DayPositionModel> dayPositionBox;

  DayPositionLocalDataSource({required this.dayPositionBox});

  @override
  Future<List<DayPositionModel>> load(void request) async {
    try {
      return dayPositionBox.values.toList();
    } catch (e) {
      throw CacheException();
    }
  }

  @override
  Future<void> add(List<DayPositionModel> dayPositionList) async {
    try {
      final List<int> dayPositions = [];
      dayPositions.addAll(dayPositionBox.values.map((e) => e.id));
      dayPositions.addAll(dayPositionList.map((e) => e.id));
      final ids = {...dayPositions};
      await dayPositionBox.putAll(
        {
          for (final element in dayPositionList.where(
            (element) => ids.contains(element.id),
          ))
            element.id: element,
        },
      );
      await dayPositionBox.deleteAll([
        for (final id in dayPositionList.where(
          (element) => !dayPositionList.map((e) => e.id).contains(element.id),
        ))
          id,
      ]);
    } catch (e) {
      throw CacheException();
    }
  }
}
