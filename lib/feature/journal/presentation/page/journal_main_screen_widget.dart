import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:studenda_mobile_student/feature/auth/presentation/bloc/bloc/auth_bloc.dart';
import 'package:studenda_mobile_student/feature/journal/presentation/widgets/journal_subject_screen_widget.dart';
import 'package:studenda_mobile_student/feature/journal/presentation/widgets/subject_item_widget.dart';
import 'package:studenda_mobile_student/feature/schedule/presentation/bloc/schedule_bloc.dart';
import 'package:studenda_mobile_student/injection_container.dart';

class JournalMainScreenPage extends StatelessWidget {
  const JournalMainScreenPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => sl<ScheduleBloc>()),
      ],
      child: const _JournalMainBody(),
    );
  }
}

class _JournalMainBody extends StatelessWidget {
  const _JournalMainBody();

  @override
  Widget build(BuildContext context) {
    final extendedDisciplineList =
        context.watch<ScheduleBloc>().extendedDisciplineList;
    final user = context.watch<AuthBloc>().user;
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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: extendedDisciplineList
                .map(
                  (element) => GestureDetector(
                    onTap: () => {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => JournalSubjectScreenWidget(
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
          ),
        ),
      ),
    );
  }
}
