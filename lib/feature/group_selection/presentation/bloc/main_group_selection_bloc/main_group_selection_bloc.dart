import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:studenda_mobile/feature/group_selection/domain/entities/course_entity.dart';
import 'package:studenda_mobile/feature/group_selection/domain/entities/department_entity.dart';
import 'package:studenda_mobile/feature/group_selection/domain/entities/group_entity.dart';

part 'main_group_selection_event.dart';
part 'main_group_selection_state.dart';
part 'main_group_selection_bloc.freezed.dart';

class MainGroupSelectionBloc
    extends Bloc<MainGroupSelectionEvent, MainGroupSelectionState> {
  GroupEntity selectedGroup;
  CourseEntity selectedCourse;
  DepartmentEntity selectedDepartment;

  MainGroupSelectionBloc(
      {required this.selectedGroup,
      required this.selectedCourse,
      required this.selectedDepartment})
      : super(const _Initial()) {
    on<_setGroup>((event, emit) {
      selectedGroup = event.group;
    });
    on<_setCourse>((event, emit) {
      selectedCourse = event.course;
    });
    on<_setDepartment>((event, emit) {
      selectedDepartment = event.department;
    });
    on<_Load>((event, emit) {
      emit(const MainGroupSelectionState.loading());
    });
    on<_LoadFail>((event, emit) {
      emit(MainGroupSelectionState.fail(event.errorMessage));
    });
    on<_LoadSuccess>((event, emit) {
      emit(const MainGroupSelectionState.success());
    });
  }
}
