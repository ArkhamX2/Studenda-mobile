import 'package:dartz/dartz.dart';
import 'package:studenda_mobile/core/common/data/model/subject_position_model.dart';
import 'package:studenda_mobile/core/common/domain/repositories/subject_position_repository.dart';
import 'package:studenda_mobile/core/data/error/failure.dart';
import 'package:studenda_mobile/core/data/usecases/usecase.dart';

class GetSubjectPositionList extends Usecase<List<SubjectPositionModel>,void>{
  final SubjectPositionRepository subjectPositionRepository;

  GetSubjectPositionList({required this.subjectPositionRepository});

  @override
  Future<Either<Failure,List<SubjectPositionModel>>> call(void request) async{
    return await subjectPositionRepository.load(request);
  }
}
