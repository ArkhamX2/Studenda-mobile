import 'package:dartz/dartz.dart';
import 'package:studenda_mobile/core/data/error/failure.dart';
import 'package:studenda_mobile/core/data/usecases/usecase.dart';
import 'package:studenda_mobile/feature/schedule/data/models/week_type_model.dart';
import 'package:studenda_mobile/feature/schedule/domain/repositories/week_type_repository.dart';

class GetAllWeekType extends Usecase<List<WeekTypeModel>,void>{
  final WeekTypeRepository weekTypeRepository;

  GetAllWeekType({required this.weekTypeRepository});

  @override
  Future<Either<Failure,List<WeekTypeModel>>> call(void request) async{
    return await weekTypeRepository.getAll(request);
  }
}
