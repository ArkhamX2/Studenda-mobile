import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'main_group_selection_state.dart';
part 'main_group_selection_cubit.freezed.dart';

class MainGroupSelectionCubit extends Cubit<MainGroupSelectionState> {
  MainGroupSelectionCubit() : super(const MainGroupSelectionState.initial());

  void load() {
    emit(const MainGroupSelectionState.loading());
  }

  void success() {
    emit(const MainGroupSelectionState.success());
  }

  void fail(String errorMessage) {
    emit(MainGroupSelectionState.fail(errorMessage));
  }

}
