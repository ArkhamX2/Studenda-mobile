part of 'common_bloc.dart';

@freezed
class CommonState with _$CommonState {
  const factory CommonState.initial() = _Initial;
  const factory CommonState.loading() = _Loading;
  const factory CommonState.fail([@Default("Unknown error") String message]) = _Fail;
  const factory CommonState.success(List<SubjectPositionModel> subjectPositions,
  List<DayPositionModel> dayPositions) = _Success;
  
}
