// ignore_for_file: overridden_fields

import 'package:flutter/material.dart';
import 'package:studenda_mobile_student/core/presentation/label/studenda_label_widget.dart';
import 'package:studenda_mobile_student/resources/colors.dart';

class StudendaAlignedLabelWidget extends StudendaLabelWidget {
  @override
  final String text;

  @override
  final double fontSize;

  @override
  final TextAlign align;

  const StudendaAlignedLabelWidget({
    required this.text,
    required this.fontSize,
    required this.align,
  }) : super(
          text: text,
          align: align,
          color: mainForegroundColor,
          fontSize: fontSize,
          weight: FontWeight.normal,
        );
}
