// ignore_for_file: void_checks

import 'package:studenda_mobile_student/feature/schedule/data/models/discipline/discipline_model.dart';
import 'package:studenda_mobile_student/feature/schedule/data/models/subject_type_model.dart';

class ExtendedDisciplineModel {
  final DisciplineModel discipline;
  final SubjectTypeModel subjectType;
  final int subjectId;

  ExtendedDisciplineModel({
    required this.discipline,
    required this.subjectType,
    required this.subjectId,
  });
}
