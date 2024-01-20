import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:studenda_mobile/core/utils/get_current_week_days.dart';
import 'package:studenda_mobile/core/utils/map_subject_model_to_day_scehdule_list.dart';
import 'package:studenda_mobile/feature/schedule/data/models/schedule_request_model.dart';
import 'package:studenda_mobile/feature/schedule/domain/entities/schedule_entity.dart';
import 'package:studenda_mobile/feature/schedule/domain/entities/week_type_entity.dart';
import 'package:studenda_mobile/feature/schedule/domain/usecases/get_schedule.dart';
import 'package:studenda_mobile/feature/schedule/domain/usecases/get_week_type.dart';

part 'schedule_bloc.freezed.dart';
part 'schedule_event.dart';
part 'schedule_state.dart';

class ScheduleBloc extends Bloc<ScheduleEvent, ScheduleState> {
  final GetSchedule getSchedule;
  final GetWeekType getWeekType;
  WeekTypeEntity? weekType;

  ScheduleBloc({required this.getSchedule, required this.getWeekType})
      : super(const _Initial()) {
    on<_ChangeWeekType>((event, emit) {
      weekType = weekType?.index == 1
          ? WeekTypeEntity(id: weekType!.id + 1, name: weekType!.name, index: 2)
          : WeekTypeEntity(
              id: weekType!.id - 1,
              name: weekType!.name,
              index: 1,
            );
    });

    on<_Load>((event, emit) async {
      emit(const ScheduleState.loading());
      WeekTypeEntity weekType;
      // ignore: void_checks
      await getWeekType.call(() {}).then(
            (value) => value.fold(
              (l) => emit(ScheduleState.fail(l.message)),
              (r) async {
                weekType = WeekTypeEntity(
                  id: r.id,
                  name: r.name,
                  index: r.index,
                );
                await getSchedule
                    .call(
                      ScheduleRequestModel(
                        groupId: event.groupId,
                        weekTypeId: weekType.id,
                      ),
                    )
                    .then(
                      (value) => value.fold(
                        (l) => emit(ScheduleState.fail(l.message)),
                        (r) => emit(
                          ScheduleState.success(
                            ScheduleEntity(
                              schedule: mapSubjectModelToDayScehduleList(r),
                              weekType: weekType,
                              weekDays: getCurrentWeekDays(),
                            ),
                          ),
                        ),
                      ),
                    );
              },
            ),
          );
    });
  }
}
