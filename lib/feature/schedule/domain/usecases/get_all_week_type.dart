import 'package:dartz/dartz.dart';
import 'package:studenda_mobile_student/core/data/error/failure.dart';
import 'package:studenda_mobile_student/core/data/usecases/usecase.dart';
import 'package:studenda_mobile_student/feature/schedule/data/models/week_type/week_type_model.dart';
import 'package:studenda_mobile_student/feature/schedule/domain/repositories/week_type_repository.dart';

class GetAllWeekType extends Usecase<List<WeekTypeModel>, void> {
  final WeekTypeRepository weekTypeRepository;

  GetAllWeekType({required this.weekTypeRepository});

  @override
  Future<Either<Failure, List<WeekTypeModel>>> call(
    void request, [
    bool remote = true,
  ]) async {
    return await weekTypeRepository.getAll(request, remote);
  }
}
