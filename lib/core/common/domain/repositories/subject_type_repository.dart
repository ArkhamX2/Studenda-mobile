// ignore_for_file: void_checks

import 'package:dartz/dartz.dart';
import 'package:studenda_mobile/core/common/data/model/subject_type_model.dart';
import 'package:studenda_mobile/core/data/error/failure.dart';

abstract class SubjectTypeRepository {
  Future<Either<Failure,List<SubjectTypeModel>>> load(List<int> request);
}

