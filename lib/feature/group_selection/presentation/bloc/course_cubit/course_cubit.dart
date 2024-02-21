import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:studenda_mobile_student/feature/group_selection/domain/entities/course_entity.dart';
import 'package:studenda_mobile_student/feature/group_selection/domain/usecases/load_courses.dart';

part 'course_state.dart';
part 'course_cubit.freezed.dart';

class CourseCubit extends Cubit<CourseState> {
  final LoadCourses loadCourses;

  List<CourseEntity> courseList = [];

  CourseCubit({required this.loadCourses}) : super(const CourseState.initial());
  Future<void> load() async {
    emit(const CourseState.loading());
    final courses = await loadCourses(() {});
    courses.fold(
      (l) => emit(CourseState.fail(l.message)),
      (r) {
        courseList = r
            .map(
              (element) => CourseEntity(
                id: element.id,
                name: element.name,
                grade: element.grade,
              ),
            )
            .toList();
        emit(
          CourseState.success(
            courseList,
          ),
        );
      },
    );
  }

  Future<void> loadLocally() async {
    emit(const CourseState.loading());
    final courses = await loadCourses(() {});
    courses.fold(
      (l) => emit(CourseState.fail(l.message)),
      (r) {
        courseList = r
            .map(
              (element) => CourseEntity(
                id: element.id,
                name: element.name,
                grade: element.grade,
              ),
            )
            .toList();
        emit(
          CourseState.success(
            courseList,
          ),
        );
      },
    );
  }
}
