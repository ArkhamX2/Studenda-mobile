import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'group_state.dart';
part 'group_cubit.freezed.dart';

class GroupCubit extends Cubit<GroupState> {

  final LoadGroups loadGroups;

  GroupCubit({required this.loadGroups})
      : super(const GroupState.initial());
  Future<void> load() async {
    emit(const GroupState.loading());
    final groups = await loadGroups(() {});
    groups.fold(
      (l) => emit(GroupState.fail(l.message)),
      (r) => emit(GroupState.success(r)),
    );
  }

}
