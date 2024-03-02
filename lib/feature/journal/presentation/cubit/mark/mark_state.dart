part of 'mark_cubit.dart';

@freezed
class MarkState with _$MarkState {
  const factory MarkState.initial() = _Initial;
  const factory MarkState.loading() = _Loading;
  const factory MarkState.localLoadingFail([@Default("Unknown error") String message]) = _LocalLoadingFail;
  const factory MarkState.localLoadingSuccess(List<MarkModel> marks) = _LocalLoadingSuccess;
  const factory MarkState.loadingFail([@Default("Unknown error") String message]) = _LoadingFail;
  const factory MarkState.loadingSuccess(List<MarkModel> marks) = _LoadingSuccess;
}
