import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:studenda_mobile/feature/schedule/data/models/schedule_request_model.dart';
import 'package:studenda_mobile/feature/schedule/data/models/subject_model.dart';
import 'package:studenda_mobile/feature/schedule/domain/entities/day_schedule_entity.dart';
import 'package:studenda_mobile/feature/schedule/domain/entities/schedule_entity.dart';
import 'package:studenda_mobile/feature/schedule/domain/entities/subject_entity.dart';
import 'package:studenda_mobile/feature/schedule/domain/entities/week_type_entity.dart';
import 'package:studenda_mobile/feature/schedule/domain/usecases/get_schedule.dart';
import 'package:studenda_mobile/feature/schedule/domain/usecases/get_week_type.dart';

part 'schedule_event.dart';
part 'schedule_state.dart';
part 'schedule_bloc.freezed.dart';

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
              id: weekType!.id - 1, name: weekType!.name, index: 1);
    });

    on<_Load>((event, emit) async {
      emit(const ScheduleState.loading());
      WeekTypeEntity weekType;
      ScheduleEntity schedule;
      final weekTypeCall = await getWeekType.call(() {}).then(
            (value) => value.fold(
              (l) => emit(ScheduleState.fail(l.message)),
              (r) async {
                weekType = WeekTypeEntity(
                  id: r.id,
                  name: r.name,
                  index: r.index,
                );
                final scheduleCall = await getSchedule
                    .call(
                      ScheduleRequestModel(
                          groupId: event.groupId, weekTypeId: weekType.id),
                    )
                    .then(
                      (value) => value.fold(
                        (l) => emit(ScheduleState.fail(l.message)),
                        (r) => emit(
                          ScheduleState.success(
                            ScheduleEntity(
                              schedule: mapSubjectModelToDayScehduleList(r),
                              weekType: weekType,
                              weekDays: [
                                "22",
                                "23",
                                "24",
                                "25",
                                "26",
                                "27",
                              ],
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

List<DayScheduleEntity> mapSubjectModelToDayScehduleList(List<SubjectModel> r) {
  final Map<int, List<SubjectEntity>> dayScheduleEntityMap = {};

  for (var i = 0; i < r.length; i++) {
    if (dayScheduleEntityMap.containsKey(r[i].weekPositionId)) {
      dayScheduleEntityMap[r[i].weekPositionId]!.add(
        SubjectEntity(
          id: r[i].id,
          title: r[i].discipline.name,
          classroom: r[i].classroom,
          teacher: r[i].user.name,
          dayTime: r[i].subjectPositionId,
        ),
      );
    } else {
      dayScheduleEntityMap[r[i].weekPositionId] = [
        SubjectEntity(
          id: r[i].id,
          title: r[i].discipline.name,
          classroom: r[i].classroom,
          teacher: r[i].user.name,
          dayTime: r[i].subjectPositionId,
        ),
      ];
    }
  }

  final List<DayScheduleEntity> answer = dayScheduleEntityMap.entries.map(
    (entry) {
      return DayScheduleEntity(weekPosition: entry.key, subjects: entry.value);
    },
  ).toList();
  return answer;
}
