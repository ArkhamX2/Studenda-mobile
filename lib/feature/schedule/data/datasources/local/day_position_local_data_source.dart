import 'package:hive/hive.dart';
import 'package:studenda_mobile_student/core/data/datasource/datasource.dart';
import 'package:studenda_mobile_student/core/data/error/exception.dart';
import 'package:studenda_mobile_student/feature/schedule/data/models/day_position_model.dart';

class DayPositionLocalDataSource
    extends LocalDataSource<List<DayPositionModel>, void> {
  Box<DayPositionModel> dayPositionBox;

  DayPositionLocalDataSource({required this.dayPositionBox});
  
  @override
  Future<void> add(List<DayPositionModel> dayPositionList) async {
    try {
      if (dayPositionList.isEmpty) {
        dayPositionBox.clear();
        return;
      }

      await updateBox<DayPositionModel>(
        {for (final item in dayPositionList) item.id: item},
        dayPositionBox.values.map((e) => e.id).toList(),
        dayPositionBox,
      );
    } catch (e) {
      throw CacheException();
    }
  }

  @override
  Future<List<DayPositionModel>> load(void request) async {
    try {
      return dayPositionBox.values.toList();
    } catch (e) {
      throw CacheException();
    }
  }
}
