// ignore_for_file: overridden_fields

import 'package:flutter/material.dart';
import 'package:studenda_mobile/core/presentation/studenda_label_widget.dart';

class StudendaColoredLabelWidget extends StudendaLabelWidget {
  @override
  final String text;

  @override
  final double fontSize;

  @override
  final Color color;

  const StudendaColoredLabelWidget({
    required this.text,
    required this.fontSize,
    required this.color,
  }) : super(
          text: text,
          align: TextAlign.start,
          color: color,
          fontSize: fontSize,
          weight: FontWeight.normal,
        );
}
