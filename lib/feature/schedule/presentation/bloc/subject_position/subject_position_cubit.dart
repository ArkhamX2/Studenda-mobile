// ignore_for_file: void_checks

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:studenda_mobile_student/feature/schedule/data/models/subject_position/subject_position_model.dart';
import 'package:studenda_mobile_student/feature/schedule/domain/usecases/get_subject_position.dart';

part 'subject_position_state.dart';
part 'subject_position_cubit.freezed.dart';

class SubjectPositionCubit extends Cubit<SubjectPositionState> {
  final GetSubjectPositionList getSubjectPosition;
  SubjectPositionCubit({required this.getSubjectPosition})
      : super(const SubjectPositionState.initial());

  Future<void> load() async {
    final result = await getSubjectPosition.call(() {});
    result.fold(
      (l) => emit(SubjectPositionState.fail(l.message)),
      (r) => emit(SubjectPositionState.success(r)),
    );
  }

  Future<void> loadLocally() async {
    final result = await getSubjectPosition.call(() {},false);
    result.fold(
      (l) => emit(SubjectPositionState.localLoadingFail(l.message)),
      (r) => emit(SubjectPositionState.localLoadingSuccess(r)),
    );
  }
}
