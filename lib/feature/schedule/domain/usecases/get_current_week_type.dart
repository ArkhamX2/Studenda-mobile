import 'package:dartz/dartz.dart';
import 'package:studenda_mobile_student/core/data/error/failure.dart';
import 'package:studenda_mobile_student/core/data/usecases/usecase.dart';
import 'package:studenda_mobile_student/feature/schedule/data/models/week_type_model.dart';
import 'package:studenda_mobile_student/feature/schedule/domain/repositories/week_type_repository.dart';

class GetCurrentWeekType extends Usecase<WeekTypeModel,void>{
  final WeekTypeRepository weekTypeRepository;

  GetCurrentWeekType({required this.weekTypeRepository});

  @override
  Future<Either<Failure,WeekTypeModel>> call(void request, [bool remote = true]) async{
    return await weekTypeRepository.getCurrent(request,remote);
  }
}
