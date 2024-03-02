import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:studenda_mobile_student/feature/journal/data/model/task/mark_model.dart';
import 'package:studenda_mobile_student/feature/journal/domain/usecases/get_mark_list.dart';

part 'mark_state.dart';
part 'mark_cubit.freezed.dart';

class MarkCubit extends Cubit<MarkState> {
  final GetMarkList loadMarkTypes;

  List<MarkModel> markList = [];

  MarkCubit(this.loadMarkTypes) : super(const MarkState.initial());

  Future<void> load(List<int> taskIds) async {
    final courses = await loadMarkTypes(taskIds);
    courses.fold(
      (l) => emit(MarkState.loadingFail(l.message)),
      (r) {
        markList = r;
        emit(
          MarkState.loadingSuccess(
            markList,
          ),
        );
      },
    );
  }

  Future<void> loadLocally(List<int> taskIds) async {
    emit(const MarkState.loading());
    final courses = await loadMarkTypes(taskIds, false);
    courses.fold(
      (l) => emit(MarkState.localLoadingFail(l.message)),
      (r) {
        markList = r;
        emit(
          MarkState.localLoadingSuccess(
            markList,
          ),
        );
      },
    );
  }
}
