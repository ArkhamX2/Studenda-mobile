part of 'group_cubit.dart';

@freezed
class GroupState with _$GroupState {
  const factory GroupState.initial() = _Initial;
  const factory GroupState.loading() = _Loading;
  const factory GroupState.success(List<GroupEntity> departments) = _Success;
  const factory GroupState.fail([@Default("Unknown error") String message]) = _Fail;

}
