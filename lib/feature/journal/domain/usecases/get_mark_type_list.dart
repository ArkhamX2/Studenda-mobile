import 'package:dartz/dartz.dart';
import 'package:studenda_mobile_student/core/data/error/failure.dart';
import 'package:studenda_mobile_student/core/data/usecases/usecase.dart';
import 'package:studenda_mobile_student/feature/journal/data/model/mark_type_model.dart';
import 'package:studenda_mobile_student/feature/journal/domain/repository/mark_type_repository.dart';

class GetMarkTypeList extends Usecase<List<MarkTypeModel>, void> {
  final MarkTypeRepository markTypeRepository;

  GetMarkTypeList({required this.markTypeRepository});

  @override
  Future<Either<Failure, List<MarkTypeModel>>> call(
    void request, [
    bool remote = true,
  ]) async {
    return await markTypeRepository.load(request, remote);
  }
}
