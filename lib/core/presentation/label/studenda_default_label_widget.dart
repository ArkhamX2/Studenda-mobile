// ignore_for_file: overridden_fields

import 'package:flutter/material.dart';
import 'package:studenda_mobile/core/presentation/label/studenda_label_widget.dart';
import 'package:studenda_mobile/resources/colors.dart';

class StudendaDefaultLabelWidget extends StudendaLabelWidget {
  @override
  final String text;

  @override
  final double fontSize;

  const StudendaDefaultLabelWidget({
    required this.text,
    required this.fontSize,
  }) : super(
          text: text,
          align: TextAlign.start,
          color: mainForegroundColor,
          fontSize: fontSize,
          weight: FontWeight.normal,
        );
}
