part of 'mark_type_cubit.dart';

@freezed
class MarkTypeState with _$MarkTypeState {
  const factory MarkTypeState.initial() = _Initial;
  const factory MarkTypeState.loading() = _Loading;
  const factory MarkTypeState.localLoadingFail([@Default("Unknown error") String message]) = _LocalLoadingFail;
  const factory MarkTypeState.localLoadingSuccess(List<MarkTypeModel> markTypes) = _LocalLoadingSuccess;
  const factory MarkTypeState.loadingFail([@Default("Unknown error") String message]) = _LoadingFail;
  const factory MarkTypeState.loadingSuccess(List<MarkTypeModel> markTypes) = _LoadingSuccess;
}
