import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:studenda_mobile_student/feature/schedule/domain/entities/subject_entity.dart';
import 'package:studenda_mobile_student/feature/schedule/presentation/widgets/schedule_item_widget.dart';
import 'package:studenda_mobile_student/resources/colors.dart';

class DayScheduleWidget extends StatelessWidget {
  final String dayTitle;
  final List<SubjectEntity> subjects;
  final bool isTitleRequired;
  final bool highlight;

  const DayScheduleWidget({
    super.key,
    required this.dayTitle,
    required this.subjects,
    required this.isTitleRequired,
    required this.highlight,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _DayTitleWidget(dayTitle: dayTitle, isRequired: isTitleRequired),
          const SizedBox(
            height: 17,
          ),
          //  Color.fromRGBO(211, 201, 253, 1),
          Container(
            decoration: highlight
                ? const BoxDecoration(
                    color:Color.fromARGB(255, 172, 152, 216),
                    borderRadius: BorderRadius.all(Radius.circular(8.2)),
                  )
                : null,
            child: ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(8)),
              child: BackdropFilter(
                filter: ImageFilter.blur(
                    sigmaX: highlight ? 20.0 : 0.0,
                    sigmaY: highlight ? 16.0 : 0.0,
                    tileMode: TileMode.decal,),
                child: Padding(
                  padding: const EdgeInsets.all(2.8),
                  child: Container(
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(5.8)),
                      color: Colors.white,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: subjects
                          .map((element) => ScheduleItemWidget(subject: element))
                          .toList(),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _DayTitleWidget extends StatelessWidget {
  const _DayTitleWidget({
    required this.dayTitle,
    required this.isRequired,
  });

  final String dayTitle;
  final bool isRequired;

  @override
  Widget build(BuildContext context) {
    return isRequired
        ? Text(
            dayTitle,
            style: const TextStyle(
              color: mainForegroundColor,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          )
        : Container();
  }
}
