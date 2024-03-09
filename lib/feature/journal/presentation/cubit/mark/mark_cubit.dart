import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:studenda_mobile_student/feature/journal/data/model/api/mark_request_model.dart';
import 'package:studenda_mobile_student/feature/journal/data/model/task/mark_model.dart';
import 'package:studenda_mobile_student/feature/journal/domain/entity/mark_entity.dart';
import 'package:studenda_mobile_student/feature/journal/domain/usecases/get_mark_list.dart';

part 'mark_state.dart';
part 'mark_cubit.freezed.dart';

class MarkCubit extends Cubit<MarkState> {
  final GetMarkList loadMarkTypes;

  List<MarkEntity> markList = [];

  MarkCubit(this.loadMarkTypes) : super(const MarkState.initial());

  Future<void> load(MarkRequestModel request) async {
    final courses = await loadMarkTypes(request);
    courses.fold(
      (error) => emit(MarkState.loadingFail(error.message)),
      (succededMarkList) {
        markList = succededMarkList.map((e) => MarkEntity.fromModel(e)).toList();
        emit(
          MarkState.loadingSuccess(
            markList,
          ),
        );
      },
    );
  }

  Future<void> loadLocally(MarkRequestModel request) async {
    emit(const MarkState.loading());
    final courses = await loadMarkTypes(request, false);
    courses.fold(
      (error) => emit(MarkState.localLoadingFail(error.message)),
      (succededMarkList) {
        markList = succededMarkList.map((e) => MarkEntity.fromModel(e)).toList();
        emit(
          MarkState.loadingSuccess(
            markList,
          ),
        );
      },
    );
  }
}
