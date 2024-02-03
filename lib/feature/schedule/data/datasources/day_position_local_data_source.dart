import 'package:hive/hive.dart';
import 'package:studenda_mobile_student/core/data/error/exception.dart';
import 'package:studenda_mobile_student/feature/schedule/data/models/day_position_model.dart';

abstract class DayPositionLocalDataSource {
  Future<List<DayPositionModel>> load();
  Future<void> add(List<DayPositionModel> remoteLoad);
}

class DayPositionLocalDataSourceImpl implements DayPositionLocalDataSource {
  Box<DayPositionModel> dayPositionBox;

  DayPositionLocalDataSourceImpl({required this.dayPositionBox});

  @override
  Future<List<DayPositionModel>> load() async {
    try {
      return dayPositionBox.values.toList();
    } catch (e) {
      throw CacheException();
    }
  }

  @override
  Future<void> add(List<DayPositionModel> courseList) async {
    try {
      await dayPositionBox.putAll(courseList.asMap());
    } catch (e) {
      throw CacheException();
    }
  }
 
}
