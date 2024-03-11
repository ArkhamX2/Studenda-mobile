import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:studenda_mobile_student/feature/schedule/data/models/discipline/discipline_model.dart';
import 'package:studenda_mobile_student/feature/schedule/domain/usecases/get_discipline_list.dart';

part 'discipline_state.dart';
part 'discipline_cubit.freezed.dart';

class DisciplineCubit extends Cubit<DisciplineState> {
  final GetDisciplineList getSubjectPosition;
  DisciplineCubit(this.getSubjectPosition)
      : super(const DisciplineState.initial());

  Future<void> load(List<int> disciplineIds) async {
    final result = await getSubjectPosition.call(disciplineIds);
    result.fold(
      (l) => emit(DisciplineState.fail(l.message)),
      (r) => emit(DisciplineState.success(r)),
    );
  }

  Future<void> loadLocally(List<int> disciplineIds) async {
    final result = await getSubjectPosition.call(disciplineIds, false);
    result.fold(
      (l) => emit(DisciplineState.localLoadingFail(l.message)),
      (r) => emit(DisciplineState.localLoadingSuccess(r)),
    );
  }
}
