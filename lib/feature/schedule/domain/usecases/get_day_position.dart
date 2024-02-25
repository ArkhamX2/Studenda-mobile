import 'package:dartz/dartz.dart';
import 'package:studenda_mobile_student/core/data/error/failure.dart';
import 'package:studenda_mobile_student/core/data/usecases/usecase.dart';
import 'package:studenda_mobile_student/feature/schedule/data/models/day_position_model.dart';
import 'package:studenda_mobile_student/feature/schedule/domain/repositories/day_position_repository.dart';

class GetDayPositionList extends Usecase<List<DayPositionModel>, void> {
  final DayPositionRepository dayPositionRepository;

  GetDayPositionList({required this.dayPositionRepository});

  @override
  Future<Either<Failure, List<DayPositionModel>>> call(
    void request, [
    bool remote = true,
  ]) async {
    return await dayPositionRepository.load(request, remote);
  }
}
