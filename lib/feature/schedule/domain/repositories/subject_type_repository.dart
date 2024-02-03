// ignore_for_file: void_checks

import 'package:dartz/dartz.dart';
import 'package:studenda_mobile_student/core/data/error/failure.dart';
import 'package:studenda_mobile_student/feature/schedule/data/models/subject_type_model.dart';

abstract class SubjectTypeRepository {
  Future<Either<Failure,List<SubjectTypeModel>>> load(List<int> request, [bool remote]);
}
