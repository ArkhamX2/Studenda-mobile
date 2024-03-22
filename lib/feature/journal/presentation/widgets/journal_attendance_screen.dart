import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:studenda_mobile_student/core/presentation/UI/studenda_loading_widget.dart';
import 'package:studenda_mobile_student/core/presentation/label/studenda_default_label_widget.dart';
import 'package:studenda_mobile_student/core/utils/get_current_academic_year.dart';
import 'package:studenda_mobile_student/feature/auth/presentation/bloc/cubit/token_cubit.dart';
import 'package:studenda_mobile_student/feature/group_selection/presentation/bloc/main_group_selection_bloc/main_group_selector_bloc.dart';
import 'package:studenda_mobile_student/feature/journal/data/model/api/absence_request_model.dart';
import 'package:studenda_mobile_student/feature/journal/data/model/api/session_request_model.dart';
import 'package:studenda_mobile_student/feature/journal/domain/entity/attendancy_mark_entity.dart';
import 'package:studenda_mobile_student/feature/journal/presentation/cubit/attendancy/attendancy_cubit.dart';
import 'package:studenda_mobile_student/feature/journal/presentation/cubit/session/session_cubit.dart';
import 'package:studenda_mobile_student/feature/schedule/data/models/discipline/extended_discipline_model.dart';
import 'package:studenda_mobile_student/feature/schedule/data/models/subject/subject_model.dart';
import 'package:studenda_mobile_student/feature/schedule/domain/entities/week_type_entity.dart';
import 'package:studenda_mobile_student/feature/schedule/presentation/bloc/subject/subject_cubit.dart';
import 'package:studenda_mobile_student/feature/schedule/presentation/bloc/week_type/week_type_cubit.dart';
import 'package:studenda_mobile_student/injection_container.dart';
import 'package:studenda_mobile_student/resources/colors.dart';

class JournalAttendanceScreenWidget extends StatelessWidget {
  final ExtendedDisciplineModel subject;
  final int userId;

  const JournalAttendanceScreenWidget({
    super.key,
    required this.subject,
    required this.userId,
  });

  @override
  Widget build(BuildContext context) {
    final selectedGroupEntity =
        context.watch<MainGroupSelectorBloc>().selectedGroup;
    final weekTypeCubit = context.watch<WeekTypeCubit>();
    return BlocProvider(
      create: (context) => sl<SubjectCubit>()
        ..loadLocally(selectedGroupEntity.id, weekTypeCubit.weekTypeList!),
      child:
          _JournalAttendancyBody(userId: userId, extendedDiscipline: subject),
    );
    // GetSession(schedule.schedule.map((e) => e.), subject),
  }
}

class _JournalAttendancyBody extends StatelessWidget {
  const _JournalAttendancyBody({
    required this.userId,
    required this.extendedDiscipline,
  });
  final int userId;
  final ExtendedDisciplineModel extendedDiscipline;
  @override
  Widget build(BuildContext context) {
    final subjectCubit = context.watch<SubjectCubit>();
    final weekTypeCubit = context.watch<WeekTypeCubit>();
    final selectedGroupEntity =
        context.watch<MainGroupSelectorBloc>().selectedGroup;
    return subjectCubit.state.when(
      initial: () => const Center(child: StudendaLoadingWidget()),
      loading: () => const Center(child: StudendaLoadingWidget()),
      localLoadingFail: (message) {
        subjectCubit.load(selectedGroupEntity.id, weekTypeCubit.weekTypeList!);
        return Center(
          child: StudendaDefaultLabelWidget(text: message, fontSize: 18),
        );
      },
      localLoadingSuccess: (subjectList) {
        if (subjectList.isEmpty) {
          subjectCubit.load(selectedGroupEntity.id, weekTypeCubit.weekTypeList!);
        }
        return getSession(
          subjectList,
          extendedDiscipline,
          userId,
          weekTypeCubit.weekTypeList!,
        );
      },
      loadingFail: (message) {
        subjectCubit.load(selectedGroupEntity.id, weekTypeCubit.weekTypeList!);
        return Center(
          child: StudendaDefaultLabelWidget(text: message, fontSize: 18),
        );
      },
      loadingSuccess: (subjectList) => getSession(
        subjectList,
        extendedDiscipline,
        userId,
        weekTypeCubit.weekTypeList!,
      ),
    );
  }
}

Widget getSession(
  List<SubjectModel> subjectList,
  ExtendedDisciplineModel extendedDiscipline,
  int userId,
  List<WeekTypeEntity> weekTypeList,
) =>
    BlocProvider(
      create: (context) {
        final tokenCubit = context.watch<TokenCubit>()..getToken();
        return sl<SessionCubit>()
          ..loadLocally(
            SessionRequestModel(
              dates: getDatesBySubjectList(subjectList, extendedDiscipline),
              subjectId: extendedDiscipline.subjectId,
              token: tokenCubit.token,
            ),
          );
      },
      child: getAttendancy(userId, weekTypeList),
    );

List<DateTime> getDatesBySubjectList(
  List<SubjectModel> subjectList,
  ExtendedDisciplineModel extendedDiscipline,
) {
  final matches = subjectList.where(
    (element) =>
        element.disciplineId == extendedDiscipline.subjectType.id &&
        element.subjectTypeId == extendedDiscipline.subjectType.id,
  );
  final dates = <DateTime>[];
  for (final match in matches) {
    dates.addAll(getDatesBySubjectModel(match));
  }
  dates.sort();
  return dates;
}

List<DateTime> getDatesBySubjectModel(SubjectModel subject) {
  final subjectDates = <DateTime>[];
  final datePointer = DateTime.now();
  final academicYear = getCurrentAcademicYear(DateTime.now());

  while (datePointer.isAfter(DateTime(academicYear, 9))) {
    subjectDates.add(datePointer.copyWith());
    datePointer.subtract(const Duration(days: 14));
  }

  return [];
}

Widget getAttendancy(
  int userId,
  List<WeekTypeEntity> weekTypeList,
) =>
    BlocProvider(
      create: (context) {
        final sessionCubit = context.watch<SessionCubit>();
        final tokenCubit = context.watch<TokenCubit>()..getToken();
        return sl<AttendancyCubit>()
          ..loadLocally(
            AbsenceRequestModel(
              accountId: userId,
              sessionIds: sessionCubit.sessionList.map((e) => e.id).toList(),
              token: tokenCubit.token,
            ),
            sessionCubit.sessionList,
            weekTypeList,
          );
      },
      child: const _AttendancyBodyWidget(),
    );

class _AttendancyBodyWidget extends StatelessWidget {
  const _AttendancyBodyWidget();

  @override
  Widget build(BuildContext context) {
    final attendancyCubit = context.watch<AttendancyCubit>();
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 240, 241, 245),
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.chevron_left_sharp),
          color: Colors.white,
          onPressed: () => {Navigator.of(context).pop()},
        ),
        titleSpacing: 0,
        centerTitle: true,
        title: const Text(
          "Placeholder",
          style: TextStyle(color: Colors.white, fontSize: 25),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(14.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: attendancyCubit.markList
                .map((element) => _MarkItemWidget(mark: element))
                .toList(),
          ),
        ),
      ),
    );
  }
}

class _MarkItemWidget extends StatelessWidget {
  final AttendancyMarkEntity mark;

  const _MarkItemWidget({required this.mark});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: SizedBox(
        height: 50,
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(
              color: const Color.fromARGB(255, 170, 141, 211),
            ),
            color: Colors.white,
            borderRadius: const BorderRadius.all(Radius.circular(5)),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    "${mark.markDateName} ${mark.weekTypeName}",
                    style: const TextStyle(
                      color: mainForegroundColor,
                      fontSize: 18,
                    ),
                  ),
                ),
                Text(
                  mark.value.toString(),
                  style: const TextStyle(
                    color: mainForegroundColor,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
