import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:studenda_mobile_student/feature/journal/data/model/task/mark_type_model.dart';
import 'package:studenda_mobile_student/feature/journal/domain/usecases/get_mark_type_list.dart';

part 'mark_type_state.dart';
part 'mark_type_cubit.freezed.dart';

class MarkTypeCubit extends Cubit<MarkTypeState> {
  final GetMarkTypeList loadMarkTypes;

  List<MarkTypeModel> markTypeList = [];

  MarkTypeCubit(this.loadMarkTypes) : super(const MarkTypeState.initial());

  Future<void> load() async {
    final courses = await loadMarkTypes(() {});
    courses.fold(
      (l) => emit(MarkTypeState.loadingFail(l.message)),
      (r) {
        markTypeList = r;
        emit(
          MarkTypeState.loadingSuccess(
            markTypeList,
          ),
        );
      },
    );
  }

  Future<void> loadLocally() async {
    emit(const MarkTypeState.loading());
    final courses = await loadMarkTypes(() {}, false);
    courses.fold(
      (l) => emit(MarkTypeState.localLoadingFail(l.message)),
      (r) {
        markTypeList = r;
        emit(
          MarkTypeState.localLoadingSuccess(
            markTypeList,
          ),
        );
      },
    );
  }
}
