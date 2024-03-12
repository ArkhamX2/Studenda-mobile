import 'package:flutter/material.dart';
import 'package:studenda_mobile_student/feature/schedule/domain/entities/subject_entity.dart';
import 'package:studenda_mobile_student/feature/schedule/presentation/widgets/position_values.dart';
import 'package:studenda_mobile_student/resources/colors.dart';

//По нажатию на элемент выводить имя преподавателя ниже
class ScheduleItemWidget extends StatefulWidget {
  final SubjectEntity subject;
  const ScheduleItemWidget({required this.subject});

  @override
  State<ScheduleItemWidget> createState() => _ScheduleItemWidgetState();
}

class _ScheduleItemWidgetState extends State<ScheduleItemWidget> {
  bool isVisible = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: () => setState(() {
            isVisible = !isVisible;
          }),
          child: _MainSubjectInfoRowWidget(
            widget: widget,
            isTeacherVisible: isVisible,
          ),
        ),
        AnimatedSize(
          duration: const Duration(milliseconds: 200),
          child: isVisible
              ? _SubjectInfoRowWidget(
                  widget: widget,
                )
              : Container(),
        ),
      ],
    );
  }
}

class _SubjectInfoRowWidget extends StatelessWidget {
  const _SubjectInfoRowWidget({
    required this.widget,
  });

  final ScheduleItemWidget widget;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(8, 0, 8, 8),
      child: IntrinsicHeight(
        child: Row(
          children: [
            const SizedBox(
              width: 64,
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(5),
                    bottomRight: Radius.circular(5),
                  ),
                  border: Border.all(
                    color: const Color.fromARGB(60, 0, 0, 0),
                  ),
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: widget.subject.groups.isEmpty
                            ? Text(
                                widget.subject.teacher == null
                                    ? ""
                                    : widget.subject.teacher!,
                                style: const TextStyle(
                                  color: mainForegroundColor,
                                  fontSize: 16,
                                ),
                              )
                            : Column(
                                children: widget.subject.groups
                                    .map(
                                      (e) => Row(
                                        children: [
                                          Text(e.name),
                                          FloatingActionButton(
                                            onPressed: () {},
                                            child: const Icon(
                                              Icons.menu_book_rounded,
                                            ),
                                          ),
                                        ],
                                      ),
                                    )
                                    .toList(),
                              ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _MainSubjectInfoRowWidget extends StatelessWidget {
  const _MainSubjectInfoRowWidget({
    required this.widget,
    required this.isTeacherVisible,
  });

  final ScheduleItemWidget widget;
  final bool isTeacherVisible;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: !isTeacherVisible
          ? const EdgeInsets.all(8.0)
          : const EdgeInsets.fromLTRB(8, 8, 8, 0),
      child: IntrinsicHeight(
        child: Row(
          children: [
            SizedBox(
              width: 48,
              height: 48,
              child: Text(
                dayPositionValues[widget.subject.subjectPosition],
                textAlign: TextAlign.left,
                style: const TextStyle(
                  color: mainForegroundColor,
                  fontSize: 16,
                ),
              ),
            ),
            const VerticalDivider(
              thickness: 1,
              indent: 5,
              endIndent: 5,
              color: Colors.grey,
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: !isTeacherVisible
                      ? BorderRadius.circular(5)
                      : const BorderRadius.only(
                          topLeft: Radius.circular(5),
                          topRight: Radius.circular(5),
                        ),
                  border: Border.all(
                    color: const Color.fromARGB(60, 0, 0, 0),
                  ),
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Center(
                          child: Text(
                            "${widget.subject.title} (${widget.subject.subjectTypeName})",
                            style: const TextStyle(
                              color: mainForegroundColor,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Text(
                      widget.subject.classroom ?? "",
                      style: const TextStyle(
                        color: mainForegroundColor,
                        fontSize: 16,
                      ),
                    ),
                    const SizedBox(
                      width: 14,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
