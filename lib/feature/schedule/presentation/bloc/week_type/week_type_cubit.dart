// ignore_for_file: void_checks

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:studenda_mobile_student/feature/schedule/domain/entities/week_type_entity.dart';
import 'package:studenda_mobile_student/feature/schedule/domain/usecases/get_all_week_type.dart';

part 'week_type_state.dart';
part 'week_type_cubit.freezed.dart';

class WeekTypeCubit extends Cubit<WeekTypeState> {
  WeekTypeEntity? currentWeekType =
      const WeekTypeEntity(id: -1, name: "name", index: -1);
  List<WeekTypeEntity>? weekTypeList = [];
  DateTime datePointer = DateTime.now();

  final GetAllWeekType getSubjectPosition;
  WeekTypeCubit(this.getSubjectPosition) : super(const WeekTypeState.initial());

  Future<void> load() async {
    emit(const WeekTypeState.loading());
    final result = await getSubjectPosition.call(() {});
    result.fold(
      (l) => emit(WeekTypeState.fail(l.message)),
      (r) {
        weekTypeList = r.map((e) => WeekTypeEntity.fromModel(e)).toList();
        emit(WeekTypeState.loadSuccess(weekTypeList!));
      },
    );
  }

  Future<void> loadLocally() async {
    emit(const WeekTypeState.loading());
    final result = await getSubjectPosition.call(() {}, false);
    result.fold((l) => emit(WeekTypeState.localLoadFail(l.message)), (r) {
      weekTypeList = r.map((e) => WeekTypeEntity.fromModel(e)).toList();
      emit(WeekTypeState.localLoadSuccess(weekTypeList!));
    });
  }

  Future<void> addWeekType() async {
    emit(const WeekTypeState.loading());
    currentWeekType =
        currentWeekType!.index == 1 ? weekTypeList!.last : weekTypeList!.first;
    datePointer = datePointer.add(const Duration(days: 7));

    final result = await getSubjectPosition.call(() {});
    result.fold(
      (l) => emit(WeekTypeState.fail(l.message)),
      (r) => emit(
        WeekTypeState.loadSuccess(
          r.map((e) => WeekTypeEntity.fromModel(e)).toList(),
        ),
      ),
    );
  }

  Future<void> subtractWeekType() async {
    emit(const WeekTypeState.loading());
    currentWeekType =
        currentWeekType!.index == 1 ? weekTypeList!.last : weekTypeList!.first;
    datePointer = datePointer.subtract(const Duration(days: 7));

    final result = await getSubjectPosition.call(() {});
    result.fold(
      (l) => emit(WeekTypeState.fail(l.message)),
      (r) => emit(
        WeekTypeState.loadSuccess(
          r.map((e) => WeekTypeEntity.fromModel(e)).toList(),
        ),
      ),
    );
  }
}
