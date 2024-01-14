import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:studenda_mobile/feature/group_selection/domain/entities/course_entity.dart';
import 'package:studenda_mobile/feature/group_selection/domain/usecases/load_courses.dart';

part 'course_state.dart';
part 'course_cubit.freezed.dart';

class CourseCubit extends Cubit<CourseState> {
  final LoadCourses loadCourses;

  CourseCubit({required this.loadCourses}) : super(const CourseState.initial());
  Future<void> load() async {
    emit(const CourseState.loading());
    final courses = await loadCourses(() {});
    courses.fold(
      (l) => emit(CourseState.fail(l.message)),
      (r) => emit(
        CourseState.success(
          r.map((element) => CourseEntity(name: element.name)).toList(),
        ),
      ),
    );
  }
}
