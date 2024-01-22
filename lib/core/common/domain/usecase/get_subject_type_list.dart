// ignore_for_file: void_checks
import 'package:dartz/dartz.dart';
import 'package:studenda_mobile/core/common/data/model/subject_type_model.dart';
import 'package:studenda_mobile/core/common/domain/repositories/subject_type_repository.dart';
import 'package:studenda_mobile/core/data/error/failure.dart';
import 'package:studenda_mobile/core/data/usecases/usecase.dart';

class GetSubjectTypeList extends Usecase<List<SubjectTypeModel>,List<int>>{
  final SubjectTypeRepository subjectTypeRepository;

  GetSubjectTypeList({required this.subjectTypeRepository});

  @override
  Future<Either<Failure,List<SubjectTypeModel>>> call(List<int> request) async{
    return await subjectTypeRepository.load(request);
  }
}
