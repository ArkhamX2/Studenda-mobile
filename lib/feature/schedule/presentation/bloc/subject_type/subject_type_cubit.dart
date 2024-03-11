// ignore_for_file: void_checks

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:studenda_mobile_student/feature/schedule/data/models/subject_type/subject_type_model.dart';
import 'package:studenda_mobile_student/feature/schedule/domain/usecases/get_subject_type_list.dart';

part 'subject_type_state.dart';
part 'subject_type_cubit.freezed.dart';

class SubjectTypeCubit extends Cubit<SubjectTypeState> {
  final GetSubjectTypeList getSubjectPosition;
  SubjectTypeCubit(this.getSubjectPosition)
      : super(const SubjectTypeState.initial());

  Future<void> load() async {
    final result = await getSubjectPosition.call(() {});
    result.fold(
      (l) => emit(SubjectTypeState.fail(l.message)),
      (r) => emit(SubjectTypeState.success(r)),
    );
  }

  Future<void> loadLocally() async {
    final result = await getSubjectPosition.call(() {}, false);
    result.fold(
      (l) => emit(SubjectTypeState.localLoadingFail(l.message)),
      (r) => emit(SubjectTypeState.localLoadingSuccess(r)),
    );
  }
}
