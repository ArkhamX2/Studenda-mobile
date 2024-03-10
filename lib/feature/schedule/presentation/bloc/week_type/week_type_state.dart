part of 'week_type_cubit.dart';

@freezed
class WeekTypeState with _$WeekTypeState {
  const factory WeekTypeState.initial() = _Initial;
  const factory WeekTypeState.loading() = _Loading;
  const factory WeekTypeState.loadSuccess(List<WeekTypeEntity> weekTypeList) = _LoadSuccess;
  const factory WeekTypeState.fail([@Default("Unknown error") String message]) = _Fail;
  const factory WeekTypeState.localLoadFail([@Default("Unknown error") String message]) = _LocalLoadFail;
  const factory WeekTypeState.localLoadSuccess(List<WeekTypeEntity> weekTypeList) = _LocalLoadSuccess;
}
