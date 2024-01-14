import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:studenda_mobile/feature/group_selection/domain/entities/course_entity.dart';
import 'package:studenda_mobile/feature/group_selection/domain/entities/department_entity.dart';
import 'package:studenda_mobile/feature/group_selection/domain/entities/group_entity.dart';

part 'main_group_selection_state.dart';
part 'main_group_selection_cubit.freezed.dart';

class MainGroupSelectionCubit extends Cubit<MainGroupSelectionState> {
  MainGroupSelectionCubit() : super(const MainGroupSelectionState.initial());

  void setGroup(GroupEntity group){
    emit(MainGroupSelectionState.setGroup(group));
  }
  void setCourse(CourseEntity course){
    emit(MainGroupSelectionState.setCourse(course));
  }
  void setDepartment(DepartmentEntity department){
    emit(MainGroupSelectionState.setDepartment(department));
  }

  void load() {
    emit(const MainGroupSelectionState.loading());
  }

  void success() {
    emit(const MainGroupSelectionState.success());
  }

  void fail(String errorMessage) {
    emit(MainGroupSelectionState.fail(errorMessage));
  }

}
