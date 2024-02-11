import 'package:hive/hive.dart';
import 'package:studenda_mobile_student/core/data/error/exception.dart';
import 'package:studenda_mobile_student/feature/schedule/data/models/day_position_model.dart';

abstract class DayPositionLocalDataSource {
  List<DayPositionModel> load();
  Future<void> add(List<DayPositionModel> remoteLoad);
}

class DayPositionLocalDataSourceImpl implements DayPositionLocalDataSource {
  Box<DayPositionModel> dayPositionBox;

  DayPositionLocalDataSourceImpl({required this.dayPositionBox});

  @override
  List<DayPositionModel> load() {
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
          for (final element
              in dayPositionList.where((element) => ids.contains(element.id)))
            element.id: element,
        },
      );
    } catch (e) {
      throw CacheException();
    }
  }
}
