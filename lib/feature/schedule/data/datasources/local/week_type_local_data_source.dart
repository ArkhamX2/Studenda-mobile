import 'dart:convert';

import 'package:hive/hive.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:studenda_mobile_student/core/data/datasource/datasource.dart';
import 'package:studenda_mobile_student/core/data/error/exception.dart';
import 'package:studenda_mobile_student/feature/schedule/data/models/week_type_model.dart';

class WeekTypeLocalDataSource
    extends LocalDataSource<List<WeekTypeModel>, void> {
      
  Box<WeekTypeModel> weekTypeBox;
  SharedPreferences prefs;

  WeekTypeLocalDataSource({required this.weekTypeBox, required this.prefs});

  @override
  Future<void> add(List<WeekTypeModel> weekTypeList) async {
    try {
      await updateBox<WeekTypeModel>(
        {for (final item in weekTypeList) item.id: item},
        weekTypeBox.values.map((e) => e.id).toList(),
        weekTypeBox,
      );
    } catch (e) {
      throw CacheException();
    }
  }

  @override
  Future<List<WeekTypeModel>> load(void request) async {
    try {
      return weekTypeBox.values.toList();
    } catch (e) {
      throw CacheException();
    }
  }

  WeekTypeModel getCurrent() {
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
