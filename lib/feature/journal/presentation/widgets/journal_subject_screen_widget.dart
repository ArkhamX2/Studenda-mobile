import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:studenda_mobile_student/core/presentation/UI/studenda_loading_widget.dart';
import 'package:studenda_mobile_student/core/presentation/label/studenda_default_label_widget.dart';
import 'package:studenda_mobile_student/core/utils/get_current_academic_year.dart';
import 'package:studenda_mobile_student/feature/auth/presentation/bloc/cubit/token_cubit.dart';
import 'package:studenda_mobile_student/feature/journal/data/model/api/mark_request_model.dart';
import 'package:studenda_mobile_student/feature/journal/data/model/api/task_student_request_model.dart';
import 'package:studenda_mobile_student/feature/journal/domain/entity/mark_entity.dart';
import 'package:studenda_mobile_student/feature/journal/domain/entity/task_entity.dart';
import 'package:studenda_mobile_student/feature/journal/presentation/cubit/mark/mark_cubit.dart';
import 'package:studenda_mobile_student/feature/journal/presentation/cubit/task/task_cubit.dart';
import 'package:studenda_mobile_student/feature/journal/presentation/widgets/journal_attendance_screen.dart';
import 'package:studenda_mobile_student/feature/schedule/data/models/extended_discipline_model.dart';
import 'package:studenda_mobile_student/injection_container.dart';
import 'package:studenda_mobile_student/resources/colors.dart';

class JournalSubjectScreenWidget extends StatelessWidget {
  final ExtendedDisciplineModel subject;
  final int userId;

  const JournalSubjectScreenWidget({
    super.key,
    required this.subject,
    required this.userId,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) {
        final tokenCubit = context.watch<TokenCubit>();
        return sl<TaskCubit>()
          ..loadLocally(
            TaskStudentRequestModel(
              asigneeUserIds: [userId],
              disciplineId: subject.discipline.id,
              subjectTypeId: subject.subjectType.id,
              academicYear: getCurrentAcademicYear(),
              token: tokenCubit.token,
            ),
          );
      },
      child: _JournalSubjectBody(subject: subject, userId: userId),
    );
  }
}

class _JournalSubjectBody extends StatelessWidget {
  const _JournalSubjectBody({
    required this.subject,
    required this.userId,
  });

  final ExtendedDisciplineModel subject;
  final int userId;

  @override
  Widget build(BuildContext context) {
    final taskBloc = context.watch<TaskCubit>();
    final tokenCubit = context.watch<TokenCubit>()..getToken();
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
            children: [
              _AttendanceButtonWidget(
                navigateTo: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => JournalAttendanceScreenWidget(
                        subject: subject,
                        userId: userId,
                      ),
                    ),
                  );
                },
              ),
              taskBloc.state.when(
                initial: () => const Center(child: StudendaLoadingWidget()),
                loading: () => const Center(child: StudendaLoadingWidget()),
                success: (taskList) => Expanded(
                  child: _TaskScrollWidget(
                    subject: subject,
                    userId: userId,
                  ),
                ),
                fail: (message) {
                  taskBloc.loadLocally(
                    TaskStudentRequestModel(
                      asigneeUserIds: [userId],
                      disciplineId: subject.discipline.id,
                      subjectTypeId: subject.subjectType.id,
                      academicYear: getCurrentAcademicYear(),
                      token: tokenCubit.token,
                    ),
                  );

                  return Center(
                    child:
                        StudendaDefaultLabelWidget(text: message, fontSize: 18),
                  );
                },
                localLoadingFail: (message) {
                  taskBloc.load(
                    TaskStudentRequestModel(
                      asigneeUserIds: [userId],
                      disciplineId: subject.discipline.id,
                      subjectTypeId: subject.subjectType.id,
                      academicYear: getCurrentAcademicYear(),
                      token: tokenCubit.token,
                    ),
                  );
                  return Center(
                    child:
                        StudendaDefaultLabelWidget(text: message, fontSize: 18),
                  );
                },
                localLoadingSuccess: (taskList) {
                  if (taskList.isEmpty) {
                    taskBloc.load(
                      TaskStudentRequestModel(
                        asigneeUserIds: [userId],
                        disciplineId: subject.discipline.id,
                        subjectTypeId: subject.subjectType.id,
                        academicYear: getCurrentAcademicYear(),
                        token: tokenCubit.token,
                      ),
                    );
                  }
                  return _TaskScrollWidget(
                    subject: subject,
                    userId: userId,
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _TaskScrollWidget extends StatelessWidget {
  final ExtendedDisciplineModel subject;
  final int userId;

  const _TaskScrollWidget({required this.subject, required this.userId});

  @override
  Widget build(BuildContext context) {
    final taskCubit = context.watch<TaskCubit>();
    final markCubit = context.watch<MarkCubit>();
    final tokenCubit = context.watch<TokenCubit>()..getToken();
    return LayoutBuilder(
      builder: (context, constraints) => RefreshIndicator(
        onRefresh: () async {
          taskCubit.load(
            TaskStudentRequestModel(
              asigneeUserIds: [userId],
              disciplineId: subject.discipline.id,
              subjectTypeId: subject.subjectType.id,
              academicYear: getCurrentAcademicYear(),
              token: tokenCubit.token,
            ),
          );
          markCubit.load(
            MarkRequestModel(
              taskIds: taskCubit.taskList.map((e) => e.id).toList(),
              token: tokenCubit.token,
            ),
          );
        },
        child: SingleChildScrollView(
          physics: const AlwaysScrollableScrollPhysics(),
          child: Column(
            children: taskCubit.taskList
                .map(
                  (e) => _TaskItemWidget(
                    task: e,
                    mark: MarkEntity(
                      id: markCubit.markList
                          .firstWhere((element) => element.taskId == e.id)
                          .id,
                      value: markCubit.markList
                          .firstWhere((element) => element.taskId == e.id)
                          .value,
                    ),
                  ),
                )
                .toList(),
          ),
        ),
      ),
    );
  }
}

class _TaskItemWidget extends StatelessWidget {
  final TaskEntity task;
  final MarkEntity mark;
  const _TaskItemWidget({required this.task, required this.mark});

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
                    task.name,
                    style: const TextStyle(
                      color: mainForegroundColor,
                      fontSize: 18,
                    ),
                  ),
                ),
                Text(
                  "${mark.value}",
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

class _AttendanceButtonWidget extends StatelessWidget {
  final Function() navigateTo;
  const _AttendanceButtonWidget({
    required this.navigateTo,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: navigateTo,
      style: ButtonStyle(
        shape: MaterialStatePropertyAll(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
          ),
        ),
        backgroundColor: const MaterialStatePropertyAll(
          mainButtonBackgroundColor,
        ),
        padding: const MaterialStatePropertyAll(
          EdgeInsets.symmetric(horizontal: 16),
        ),
      ),
      child: const Row(
        children: [
          Expanded(
            child: Text(
              "Посещаемость",
              style: TextStyle(
                color: mainButtonForegroundColor,
                fontSize: 20,
              ),
            ),
          ),
          Icon(
            Icons.chevron_right_rounded,
            color: Colors.white,
          ),
        ],
      ),
    );
  }
}
