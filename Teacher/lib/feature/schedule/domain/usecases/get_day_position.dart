import 'package:dartz/dartz.dart';
import 'package:studenda_mobile/core/data/error/failure.dart';
import 'package:studenda_mobile/core/data/usecases/usecase.dart';
import 'package:studenda_mobile/feature/schedule/data/models/day_position_model.dart';
import 'package:studenda_mobile/feature/schedule/domain/repositories/day_position_repository.dart';

class GetDayPositionList extends Usecase<List<DayPositionModel>,void>{
  final DayPositionRepository dayPositionRepository;

  GetDayPositionList({required this.dayPositionRepository});

  @override
  Future<Either<Failure,List<DayPositionModel>>> call(void request) async{
    return await dayPositionRepository.load(request);
  }
}
