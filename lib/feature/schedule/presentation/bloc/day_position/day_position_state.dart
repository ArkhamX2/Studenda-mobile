part of 'day_position_cubit.dart';

@freezed
class DayPositionState with _$DayPositionState {
  const factory DayPositionState.initial() = DayPositionInitial;
  const factory DayPositionState.success(List<DayPositionModel> dayPositionList) = DayPositionSuccess;
  const factory DayPositionState.fail([@Default("Unknown error") String message]) = DayPositionFail;
  const factory DayPositionState.localLoadingFail([@Default("Unknown error") String message]) = DayPositionLocalLoadingFail;
  const factory DayPositionState.localLoadingSuccess(List<DayPositionModel> dayPositionList) = DayPositionLocalLoadingSuccess;
}
