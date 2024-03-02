import 'package:flutter/material.dart';
import 'package:studenda_mobile_student/feature/schedule/data/models/extended_discipline_model.dart';
import 'package:studenda_mobile_student/resources/colors.dart';

class SubjectItemWidget extends StatelessWidget {
  final ExtendedDisciplineModel subject;
  const SubjectItemWidget({
    super.key,
    required this.subject,
  });

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
          child: Center(
            child: Text(
              "${subject.discipline.name} ${subject.subjectType.name}",
              style: const TextStyle(
                color: mainForegroundColor,
                fontSize: 16,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
