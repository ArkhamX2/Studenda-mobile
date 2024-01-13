// ignore_for_file: overridden_fields

import 'package:flutter/material.dart';
import 'package:studenda_mobile/core/presentation/studenda_label_widget.dart';
import 'package:studenda_mobile/resources/colors.dart';

class StudendaWeightedLabelWidget extends StudendaLabelWidget {
  @override
  final String text;

  @override
  final double fontSize;

  @override
  final FontWeight weight;

  const StudendaWeightedLabelWidget({
    required this.text,
    required this.fontSize,
    required this.weight,
  }) : super(
          text: text,
          align: TextAlign.start,
          color: mainForegroundColor,
          fontSize: fontSize,
          weight: weight,
        );
}
