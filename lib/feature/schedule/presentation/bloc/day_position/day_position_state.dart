part of 'day_position_cubit.dart';

@freezed
class DayPositionState with _$DayPositionState {
  const factory DayPositionState.initial() = _Initial;
  const factory DayPositionState.success(List<DayPositionModel> dayPositionList) = _Success;
  const factory DayPositionState.fail([@Default("Unknown error") String message]) = _Fail;
  const factory DayPositionState.localLoadingFail([@Default("Unknown error") String message]) = _LocalLoadingFail;
  const factory DayPositionState.localLoadingSuccess(List<DayPositionModel> dayPositionList) = _LocalLoadingSuccess;
}
