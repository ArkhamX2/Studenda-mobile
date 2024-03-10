import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:studenda_mobile_student/feature/auth/domain/entities/account_entity.dart';
import 'package:studenda_mobile_student/feature/schedule/domain/usecases/get_teacher_list.dart';

part 'teacher_state.dart';
part 'teacher_cubit.freezed.dart';

class TeacherCubit extends Cubit<TeacherState> {
  final GetTeacherList getSubjectPosition;
  TeacherCubit(this.getSubjectPosition)
      : super(const TeacherState.initial());

  Future<void> load(List<int> teacherIds) async {
    final result = await getSubjectPosition.call(teacherIds);
    result.fold(
      (l) => emit(TeacherState.fail(l.message)),
      (r) => emit(TeacherState.success(r.map((e) => AccountEntity.fromModel(e)).toList())),
    );
  }

  Future<void> loadLocally(List<int> teacherIds) async {
    final result = await getSubjectPosition.call(teacherIds, false);
    result.fold(
      (l) => emit(TeacherState.localLoadingFail(l.message)),
      (r) => emit(TeacherState.localLoadingSuccess(r.map((e) => AccountEntity.fromModel(e)).toList())),
    );
  }
}
