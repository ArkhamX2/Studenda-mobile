import 'package:dartz/dartz.dart';
import 'package:studenda_mobile/core/data/error/failure.dart';
import 'package:studenda_mobile/core/data/usecases/usecase.dart';
import 'package:studenda_mobile/feature/schedule/data/models/week_type_model.dart';
import 'package:studenda_mobile/feature/schedule/domain/repositories/week_type_repository.dart';

class GetWeekType extends Usecase<WeekTypeModel,void>{
  final WeekTypeRepository weekTypeRepository;

  GetWeekType({required this.weekTypeRepository});

  @override
  Future<Either<Failure,WeekTypeModel>> call(void request) async{
    return await weekTypeRepository.load(request);
  }
}
