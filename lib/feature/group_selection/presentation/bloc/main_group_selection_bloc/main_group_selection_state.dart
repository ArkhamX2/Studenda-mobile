part of 'main_group_selection_bloc.dart';

@freezed
class GroupSelectorState with _$GroupSelectorState {
  const factory GroupSelectorState.initial() = _Initial;
  const factory GroupSelectorState.loading() = _Loading;
  const factory GroupSelectorState.success() = _Success;
  const factory GroupSelectorState.fail(String errorMessage) = _Fail;
}
