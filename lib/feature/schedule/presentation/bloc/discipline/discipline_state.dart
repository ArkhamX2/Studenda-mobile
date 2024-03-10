part of 'discipline_cubit.dart';

@freezed
class DisciplineState with _$DisciplineState {
  const factory DisciplineState.initial() = _Initial;
  const factory DisciplineState.success(List<DisciplineModel> disciplineList) = _Success;
  const factory DisciplineState.fail([@Default("Unknown error") String message]) = _Fail;
  const factory DisciplineState.localLoadingFail([@Default("Unknown error") String message]) = _LocalLoadingFail;
  const factory DisciplineState.localLoadingSuccess(List<DisciplineModel> disciplineList) = _LocalLoadingSuccess;
}
