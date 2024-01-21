import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:studenda_mobile/feature/group_selection/domain/entities/group_entity.dart';
import 'package:studenda_mobile/feature/group_selection/domain/usecases/load_groups.dart';

part 'group_state.dart';
part 'group_cubit.freezed.dart';

class GroupCubit extends Cubit<GroupState> {
  final LoadGroups loadGroups;
  List<GroupEntity>? groupList = [];

  GroupCubit({required this.loadGroups}) : super(const GroupState.initial());
  Future<void> load() async {
    emit(const GroupState.loading());
    final groups = await loadGroups(() {});
    groups.fold((l) => emit(GroupState.fail(l.message)), (succededGroupList) {
      groupList = succededGroupList.map((e) => GroupEntity(id: e.id, name: e.name)).toList();
      emit(
        GroupState.success(
          succededGroupList
              .map((element) => GroupEntity(id: element.id, name: element.name))
              .toList(),
        ),
      );
    });
  }
}
