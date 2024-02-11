import 'dart:convert';

import 'package:hive/hive.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:studenda_mobile_student/core/data/error/exception.dart';
import 'package:studenda_mobile_student/feature/schedule/data/models/week_type_model.dart';

abstract class WeekTypeLocalDataSource {
  Future<void> add(List<WeekTypeModel> remoteLoad);

  Future<List<WeekTypeModel>> load();

  Future<void> setCurrent(WeekTypeModel remoteLoad);

  Future<WeekTypeModel> getCurrent();
}

class WeekTypeLocalDataSourceImpl implements WeekTypeLocalDataSource {
  Box<WeekTypeModel> weekTypeBox;
  SharedPreferences prefs;

  WeekTypeLocalDataSourceImpl({required this.weekTypeBox, required this.prefs});

  @override
  Future<void> add(List<WeekTypeModel> weekTypeList) async {
    try {
      final List<int> weekTypes = [];
      weekTypes.addAll(weekTypeBox.values.toList().map((e) => e.id));
      weekTypes.addAll(weekTypeList.map((e) => e.id));
      final ids = {...weekTypes};
      await weekTypeBox.putAll(
        {
          for (final element
              in weekTypeList.where((element) => ids.contains(element.id)))
            element.id: element,
        },
      );
    } catch (e) {
      throw CacheException();
    }
  }

  @override
  Future<List<WeekTypeModel>> load() async {
    try {
      return weekTypeBox.values.toList();
    } catch (e) {
      throw CacheException();
    }
  }

  @override
  Future<WeekTypeModel> getCurrent() async {
    try {
      final result = prefs.getString('currentWeek');
      if (result != null) {
        final weekType = WeekTypeModel.fromJson(
          json.decode(result) as Map<String, dynamic>,
        );
        return weekType;
      } else {
        throw CacheException();
      }
    } catch (e) {
      throw CacheException();
    }
  }

  @override
  Future<void> setCurrent(WeekTypeModel remoteLoad) async {
    try {
      prefs.setString(
        'currentWeek',
        json.encode(
          remoteLoad.toJson(),
        ),
      );
    } catch (e) {
      throw CacheException();
    }
  }
}
