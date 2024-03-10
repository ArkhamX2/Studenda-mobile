part of 'week_type_cubit.dart';

@freezed
class WeekTypeState with _$WeekTypeState {
  const factory WeekTypeState.initial() = WeekTypeInitial;
  const factory WeekTypeState.loading() = WeekTypeLoading;
  const factory WeekTypeState.loadSuccess(List<WeekTypeEntity> weekTypeList) = WeekTypeLoadSuccess;
  const factory WeekTypeState.fail([@Default("Unknown error") String message]) = WeekTypeFail;
  const factory WeekTypeState.localLoadFail([@Default("Unknown error") String message]) = WeekTypeLocalLoadFail;
  const factory WeekTypeState.localLoadSuccess(List<WeekTypeEntity> weekTypeList) = WeekTypeLocalLoadSuccess;
  const factory WeekTypeState.currentWeekTypeSuccess(WeekTypeEntity weekType) = CurrentWeekTypeSuccess;
  const factory WeekTypeState.currentWeekTypeFail([@Default("Unknown error") String message]) = CurrentWeekTypeFail;
  
}
