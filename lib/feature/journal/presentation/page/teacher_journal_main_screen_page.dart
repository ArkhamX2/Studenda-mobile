import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:studenda_mobile_student/core/presentation/UI/studenda_loading_widget.dart';
import 'package:studenda_mobile_student/core/presentation/label/studenda_default_label_widget.dart';
import 'package:studenda_mobile_student/core/utils/get_discipline_ids.dart';
import 'package:studenda_mobile_student/feature/auth/presentation/bloc/bloc/auth_bloc.dart';
import 'package:studenda_mobile_student/feature/journal/presentation/widgets/journal_subject_screen_widget.dart';
import 'package:studenda_mobile_student/feature/journal/presentation/widgets/subject_item_widget.dart';
import 'package:studenda_mobile_student/feature/schedule/data/models/discipline/discipline_model.dart';
import 'package:studenda_mobile_student/feature/schedule/data/models/discipline/extended_discipline_model.dart';
import 'package:studenda_mobile_student/feature/schedule/data/models/subject/subject_model.dart';
import 'package:studenda_mobile_student/feature/schedule/data/models/subject_type/subject_type_model.dart';
import 'package:studenda_mobile_student/feature/schedule/presentation/bloc/discipline/discipline_cubit.dart';
import 'package:studenda_mobile_student/feature/schedule/presentation/bloc/subject/subject_cubit.dart';
import 'package:studenda_mobile_student/feature/schedule/presentation/bloc/subject_type/subject_type_cubit.dart';
import 'package:studenda_mobile_student/feature/schedule/presentation/bloc/week_type/week_type_cubit.dart';
import 'package:studenda_mobile_student/injection_container.dart';

class TeacherJournalMainScreenPage extends StatelessWidget {
  const TeacherJournalMainScreenPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => sl<SubjectCubit>()),
      ],
      child: const _JournalBody(),
    );
  }
}

List<ExtendedDisciplineModel> mapDisciplinesAndTypes(
  List<SubjectModel> succededSubjectList,
  List<DisciplineModel> succededDisciplineList,
  List<SubjectTypeModel> succededSubjectTypeList,
) {
  final disciplines = succededSubjectList.map(
    (e) => ExtendedDisciplineModel(
      discipline: succededDisciplineList.firstWhere(
        (element) => element.id == e.disciplineId,
      ),
      subjectType: succededSubjectTypeList.firstWhere(
        (element) => element.id == e.subjectTypeId,
      ),
      groupId: e.groupId ?? -1,
      subjectId: e.id,
    ),
  );
  final names =
      disciplines.map((e) => e.discipline.name + e.subjectType.name).toSet();
  return names
      .map(
        (e) => disciplines.firstWhere(
          (element) => element.discipline.name + element.subjectType.name == e,
        ),
      )
      .toList();
}

class _JournalBody extends StatelessWidget {
  const _JournalBody();
  @override
  Widget build(BuildContext context) {
    final subjectCubit = context.watch<SubjectCubit>();
    final disciplineCubit = context.watch<DisciplineCubit>();
    final subjectTypeCubit = context.watch<SubjectTypeCubit>()..loadLocally();
    final weekTypeCubit = context.watch<WeekTypeCubit>()..getCurrent();
    final user = context.watch<AuthBloc>().user;

    if (weekTypeCubit.state is CurrentWeekTypeSuccess &&
        subjectTypeCubit.state is SubjectTypeLocalLoadingSuccess) {
      subjectCubit.loadTeacherLocally(
        user.id,
        [weekTypeCubit.currentWeekType!],
      );
    }

    if (subjectCubit.state is SubjectLocalLoadingFail) {
      subjectCubit.loadTeacher(
        user.id,
        [weekTypeCubit.currentWeekType!],
      );
    }
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 240, 241, 245),
      appBar: AppBar(
        titleSpacing: 0,
        centerTitle: true,
        title: const Text(
          'Журнал',
          style: TextStyle(color: Colors.white, fontSize: 25),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(14.0),
        child: SingleChildScrollView(
          child: subjectCubit.state.when(
            initial: () => const Center(
              child: StudendaLoadingWidget(),
            ),
            loading: () => const Center(
              child: StudendaLoadingWidget(),
            ),
            localLoadingFail: (message) {
              subjectCubit.loadTeacher(
                user.id,
                [weekTypeCubit.currentWeekType!],
              );
              return Center(
                child: StudendaDefaultLabelWidget(text: message, fontSize: 18),
              );
            },
            loadingFail: (message) => Center(
              child: StudendaDefaultLabelWidget(text: message, fontSize: 18),
            ),
            localLoadingSuccess: (subjectList) {
              if (subjectList.isEmpty) {
                subjectCubit.loadTeacher(
                  user.id,
                  [weekTypeCubit.currentWeekType!],
                );
              }
              disciplineCubit.loadLocally(getDisciplineIds(subjectList));
              if (disciplineCubit.state is DisciplineSuccess) {
                return disciplineCubit.state.maybeWhen(
                  success: (disciplineList) => Container(),
                  orElse: () => const Center(
                    child: StudendaLoadingWidget(),
                  ),
                );
              } else {
                return const Center(
                  child: StudendaLoadingWidget(),
                );
              }
            },
            loadingSuccess: (subjectList) {
              disciplineCubit.loadLocally(getDisciplineIds(subjectList));
              if (disciplineCubit.state is DisciplineSuccess) {
                return disciplineCubit.state.maybeWhen(
                  success: (disciplineList) {
                    final extendedDisciplines = mapDisciplinesAndTypes(
                      subjectList,
                      disciplineList,
                      subjectTypeCubit.state.maybeWhen(
                        localLoadingSuccess: (subjectTypeList) =>
                            subjectTypeList,
                        orElse: () => [],
                      ),
                    );
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: extendedDisciplines
                          .map(
                            (element) => GestureDetector(
                              onTap: () => {
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        JournalSubjectScreenWidget(
                                      subject: element,
                                      userId: user.id,
                                    ),
                                  ),
                                ),
                              },
                              child: SubjectItemWidget(subject: element),
                            ),
                          )
                          .toList(),
                    );
                  },
                  orElse: () => const Center(
                    child: StudendaLoadingWidget(),
                  ),
                );
              } else {
                return const Center(
                  child: StudendaLoadingWidget(),
                );
              }
            },
          ),
        ),
      ),
    );
  }
}
