import 'package:dartz/dartz.dart';
import 'package:studenda_mobile/core/common/data/model/discipline_model.dart';
import 'package:studenda_mobile/core/data/error/failure.dart';
import 'package:studenda_mobile/core/data/usecases/usecase.dart';
import 'package:studenda_mobile/feature/schedule/domain/repositories/discipline_repository.dart';

class GetDisciplineList extends Usecase<List<DisciplineModel>,List<int>>{
  final DisciplineRepository disciplineRepository;

  GetDisciplineList({required this.disciplineRepository});

  @override
  Future<Either<Failure,List<DisciplineModel>>> call(List<int> request) async{
    return await disciplineRepository.load(request);
  }
}
