import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:studenda_mobile/core/common/data/model/day_position_model.dart';
import 'package:studenda_mobile/core/common/data/model/discipline_model.dart';
import 'package:studenda_mobile/core/common/data/model/subject_position_model.dart';

part 'common_bloc.freezed.dart';
part 'common_event.dart';
part 'common_state.dart';

class CommonBloc extends Bloc<CommonEvent, CommonState> {

  List<DisciplineModel>? disciplineList;
  List<SubjectPositionModel>? subjectPositions;
  List<DayPositionModel>? dayPositions;

  CommonBloc() : super(const _Initial()) {
    on<CommonEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
