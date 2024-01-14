part of 'week_type_cubit.dart';

@freezed
class WeekTypeState with _$WeekTypeState {
  const factory WeekTypeState.initial() = _Initial;
  const factory WeekTypeState.loading() = _Loading;
  const factory WeekTypeState.fail([@Default("Unknown error") String message]) = _Fail;
  const factory WeekTypeState.success(WeekTypeEntity weekType) = _Success;
}
