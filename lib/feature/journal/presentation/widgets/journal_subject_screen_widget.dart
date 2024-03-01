import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:studenda_mobile_student/core/presentation/UI/studenda_loading_widget.dart';
import 'package:studenda_mobile_student/core/presentation/label/studenda_default_label_widget.dart';
import 'package:studenda_mobile_student/core/utils/get_current_academic_year.dart';
import 'package:studenda_mobile_student/feature/journal/domain/entity/mark_entity.dart';
import 'package:studenda_mobile_student/feature/journal/domain/entity/task_entity.dart';
import 'package:studenda_mobile_student/feature/journal/presentation/bloc/task/task_bloc.dart';
import 'package:studenda_mobile_student/feature/journal/presentation/widgets/journal_attendance_screen.dart';
import 'package:studenda_mobile_student/feature/schedule/data/models/extended_discipline_model.dart';
import 'package:studenda_mobile_student/injection_container.dart';
import 'package:studenda_mobile_student/resources/colors.dart';

class JournalSubjectScreenWidget extends StatelessWidget {
  final ExtendedDisciplineModel subject;
  final int userId;

  const JournalSubjectScreenWidget(
      {super.key, required this.subject, required this.userId});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<TaskBloc>()
        ..add(
          TaskEvent.loadLocal(
            [userId],
            subject.discipline.id,
            subject.subjectType.id,
            getCurrentAcademicYear(),
          ),
        ),
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
    final taskBloc = context.watch<TaskBloc>();
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
                      builder: (context) =>
                          JournalAttendanceScreenWidget(subject: subject),
                    ),
                  );
                },
              ),
              taskBloc.state.when(
                initial: () => const Center(child: StudendaLoadingWidget()),
                loading: () => const Center(child: StudendaLoadingWidget()),
                success: (taskList) => Expanded(
                  child: _TaskScrollWidget(
                    tasks: taskList,
                  ),
                ),
                fail: (message) {
                  taskBloc.add(
                    TaskEvent.loadLocal(
                      [userId],
                      subject.discipline.id,
                      subject.subjectType.id,
                      getCurrentAcademicYear(),
                    ),
                  );
                  return Center(
                    child:
                        StudendaDefaultLabelWidget(text: message, fontSize: 18),
                  );
                },
                localLoadingFail: (message) {
                  taskBloc.add(
                    TaskEvent.load(
                      [userId],
                      subject.discipline.id,
                      subject.subjectType.id,
                      getCurrentAcademicYear(),
                    ),
                  );
                  return Center(
                    child:
                        StudendaDefaultLabelWidget(text: message, fontSize: 18),
                  );
                },
                localLoadingSuccess: (taskList) {
                  if (taskList.isEmpty) {
                    taskBloc.add(
                      TaskEvent.load(
                        [userId],
                        subject.discipline.id,
                        subject.subjectType.id,
                        getCurrentAcademicYear(),
                      ),
                    );
                  }
                  return _TaskScrollWidget(
                    tasks: taskList,
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
  final List<TaskEntity> tasks;

  final ExtendedDisciplineModel subject;
  final int userId;

  const _TaskScrollWidget(
      {required this.tasks, required this.subject, required this.userId});

  @override
  Widget build(BuildContext context) {
    final taskBloc = context.watch<TaskBloc>();
    return LayoutBuilder(
      builder: (context, constraints) => RefreshIndicator(
        onRefresh: () async {
          taskBloc.add(TaskEvent.load(
            [userId],
            subject.discipline.id,
            subject.subjectType.id,
            getCurrentAcademicYear(),
          ));
        },
        child: SingleChildScrollView(
          physics: const AlwaysScrollableScrollPhysics(),
          child: Column(
            children: tasks.map((e) => _TaskItemWidget(task: e, mark: )).toList(),
          )
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
