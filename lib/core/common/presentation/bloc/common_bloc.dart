import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:studenda_mobile/core/common/data/model/day_position_model.dart';
import 'package:studenda_mobile/core/common/data/model/subject_position_model.dart';
import 'package:studenda_mobile/core/common/domain/usecase/get_day_position.dart';
import 'package:studenda_mobile/core/common/domain/usecase/get_subject_position.dart';

part 'common_bloc.freezed.dart';
part 'common_event.dart';
part 'common_state.dart';

class CommonBloc extends Bloc<CommonEvent, CommonState> {
  final GetDayPositionList getDayPosition;
  final GetSubjectPositionList getSubjectPosition;

  
  List<DayPositionModel> dayPositionList;
  List<SubjectPositionModel> subjectPositionList;

  CommonBloc({required this.getDayPosition, required this.getSubjectPosition, required this.dayPositionList, required this.subjectPositionList,})
      : super(const _Initial()) {
    on<_Load>((event, emit) async {
      emit(
        const CommonState.loading(),
      );

      // ignore: void_checks
      await getDayPosition.call(() {}).then(
            (value) => value.fold(
              (error) => emit(CommonState.fail(error.message)),
              (succededDayPositionsList) async {
                // ignore: void_checks
                await getSubjectPosition.call(() {}).then(
                      (value) => value.fold(
                        (error) => emit(CommonState.fail(error.message)),
                        (succededSubjectPositionList) async {
                          emit(CommonState.success(succededSubjectPositionList, succededDayPositionsList));
                        },
                      ),
                    );
              },
            ),
          );

    });
  }
}
