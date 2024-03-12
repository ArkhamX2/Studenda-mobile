// ignore_for_file: void_checks
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:studenda_mobile_student/feature/schedule/data/models/day_position/day_position_model.dart';
import 'package:studenda_mobile_student/feature/schedule/domain/usecases/get_day_position.dart';

part 'day_position_state.dart';
part 'day_position_cubit.freezed.dart';

class DayPositionCubit extends Cubit<DayPositionState> {
  final GetDayPositionList getDayPosition;
  DayPositionCubit({required this.getDayPosition})
      : super(const DayPositionState.initial());

  Future<void> load() async {
    final result = await getDayPosition.call(() {});
    result.fold(
      (l) => emit(DayPositionState.fail(l.message)),
      (r) => emit(DayPositionState.success(r)),
    );
  }

  Future<void> loadLocally() async {
    final result = await getDayPosition.call(() {}, false);
    result.fold(
      (l) => emit(DayPositionState.localLoadingFail(l.message)),
      (r) => emit(DayPositionState.localLoadingSuccess(r)),
    );
  }
}
