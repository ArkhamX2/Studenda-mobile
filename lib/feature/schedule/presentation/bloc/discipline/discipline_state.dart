part of 'discipline_cubit.dart';

@freezed
class DisciplineState with _$DisciplineState {
  const factory DisciplineState.initial() = DisciplineInitial;
  const factory DisciplineState.success(List<DisciplineModel> disciplineList) =
      DisciplineSuccess;
  const factory DisciplineState.fail(
      [@Default("Unknown error") String message]) = DisciplineFail;
  const factory DisciplineState.localLoadingFail(
      [@Default("Unknown error") String message]) = DisciplineLocalLoadingFail;
  const factory DisciplineState.localLoadingSuccess(
      List<DisciplineModel> disciplineList) = DisciplineLocalLoadingSuccess;
}
