// ignore_for_file: void_checks

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:studenda_mobile_student/feature/group_selection/domain/entities/course_entity.dart';
import 'package:studenda_mobile_student/feature/group_selection/domain/entities/department_entity.dart';
import 'package:studenda_mobile_student/feature/group_selection/domain/entities/group_entity.dart';
import 'package:studenda_mobile_student/feature/group_selection/domain/usecases/selected_items/get_selected_course.dart';
import 'package:studenda_mobile_student/feature/group_selection/domain/usecases/selected_items/get_selected_department.dart';
import 'package:studenda_mobile_student/feature/group_selection/domain/usecases/selected_items/get_selected_group.dart';
import 'package:studenda_mobile_student/feature/group_selection/domain/usecases/selected_items/set_selected_course.dart';
import 'package:studenda_mobile_student/feature/group_selection/domain/usecases/selected_items/set_selected_department.dart';
import 'package:studenda_mobile_student/feature/group_selection/domain/usecases/selected_items/set_selected_group.dart';

part 'main_group_selector_event.dart';
part 'main_group_selector_state.dart';
part 'main_group_selector_bloc.freezed.dart';

class MainGroupSelectorBloc
    extends Bloc<MainGroupSelectorEvent, MainGroupSelectorState> {
  DepartmentEntity selectedDepartment;
  CourseEntity selectedCourse;
  GroupEntity selectedGroup;

  GetSelectedDepartment getSelectedDepartment;
  GetSelectedCourse getSelectedCourse;
  GetSelectedGroup getSelectedGroup;
  SetSelectedDepartment setSelectedDepartment;
  SetSelectedCourse setSelectedCourse;
  SetSelectedGroup setSelectedGroup;

  MainGroupSelectorBloc({
    required this.getSelectedDepartment,
    required this.getSelectedCourse,
    required this.getSelectedGroup,
    required this.setSelectedDepartment,
    required this.setSelectedCourse,
    required this.setSelectedGroup,
    required this.selectedDepartment,
    required this.selectedCourse,
    required this.selectedGroup,
  }) : super(const _Initial()) {
    on<_setGroup>((event, emit) async {
      await setSelectedGroup.call(event.group);
      selectedGroup = GroupEntity(
        id: event.group.id,
        name: event.group.name,
        courseId: event.group.courseId,
        departmentId: event.group.departmentId,
      );
    });
    on<_setCourse>((event, emit) async {
      await setSelectedCourse.call(event.course);
      selectedCourse = CourseEntity(
        id: event.course.id,
        name: event.course.name,
        grade: event.course.grade,
      );
    });
    on<_setDepartment>((event, emit) async {
      await setSelectedDepartment.call(event.department);
      selectedDepartment = DepartmentEntity(
        id: event.department.id,
        name: event.department.name,
      );
    });
    on<_getGroup>((event, emit) async {
      final result = await getSelectedGroup.call(() {});
      result.fold(
        (error) => emit(MainGroupSelectorState.fail(error.message)),
        (successedGroup) {
          selectedGroup = GroupEntity.fromModel(successedGroup);
          emit(
            MainGroupSelectorState.groupSuccess(selectedGroup),
          );
        },
      );
    });
    on<_getCourse>((event, emit) async {
      final result = await getSelectedCourse.call(() {});
      result.fold(
        (error) => emit(MainGroupSelectorState.fail(error.message)),
        (successedCourse) {
          selectedCourse = CourseEntity.fromModel(successedCourse);
          emit(
            MainGroupSelectorState.courseSuccess(selectedCourse),
          );
        },
      );
    });
    on<_getDepartment>((event, emit) async {
      final result = await getSelectedDepartment.call(() {});
      result.fold(
        (error) => emit(MainGroupSelectorState.fail(error.message)),
        (successedDepartment) {
          selectedDepartment = DepartmentEntity.fromModel(successedDepartment);
          emit(
            MainGroupSelectorState.departmentSuccess(selectedDepartment),
          );
        },
      );
    });
  }
}
