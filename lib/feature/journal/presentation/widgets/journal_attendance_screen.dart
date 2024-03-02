import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:studenda_mobile_student/feature/journal/data/model/api/absence_request_model.dart';
import 'package:studenda_mobile_student/feature/journal/domain/entity/attendancy_mark_entity.dart';
import 'package:studenda_mobile_student/feature/journal/presentation/cubit/attendancy/attendancy_cubit.dart';
import 'package:studenda_mobile_student/feature/schedule/data/models/extended_discipline_model.dart';
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
    return BlocProvider(
      create: (context) => sl<AttendancyCubit>()
        ..loadLocally(AbsenceRequestModel(userId: userId, dates: [])),
      child: const _AttendancyBodyWidget(),
    );
  }
}

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
