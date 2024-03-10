import 'package:dartz/dartz.dart';
import 'package:studenda_mobile_student/core/data/error/exception.dart';
import 'package:studenda_mobile_student/core/data/error/failure.dart';
import 'package:studenda_mobile_student/core/network/network_info.dart';
import 'package:studenda_mobile_student/feature/schedule/data/datasources/local/schedule_local_data_source.dart';
import 'package:studenda_mobile_student/feature/schedule/data/datasources/remote/schedule_remote_data_source.dart';
import 'package:studenda_mobile_student/feature/schedule/data/models/schedule_request_model.dart';
import 'package:studenda_mobile_student/feature/schedule/data/models/subject_model.dart';
import 'package:studenda_mobile_student/feature/schedule/domain/repositories/schedule_repository.dart';

class ScheduleRepositoryImpl implements ScheduleByWeekTypeRepository {
  final ScheduleRemoteDataSource remoteDataSource;
  final ScheduleLocalDataSource localDataSource;
  final NetworkInfo networkInfo;

  ScheduleRepositoryImpl({
    required this.remoteDataSource,
    required this.localDataSource,
    required this.networkInfo,
  });
  @override
  Future<Either<Failure, List<SubjectModel>>> loadStudent(
    ScheduleRequestByWeekTypeModel request, 
    List<int> weekTypeIds,[
    bool remote = true,
  ]) async {
    if (await networkInfo.isConnected && remote) {
      try {
        final remoteLoad = await remoteDataSource.studentLoad(request);
        if (remoteLoad.isEmpty) {
          await localDataSource.clearWeek(request);
          return Right(
            await localDataSource.studentLoad(
              ScheduleRequestByWeekTypeModel(
                academicYear: request.academicYear,
                groupId: request.groupId,
                weekTypeIds: weekTypeIds,
              ),
            ),
          );
        }
        await localDataSource.add(
          await localDataSource.studentLoad(
            ScheduleRequestByWeekTypeModel(
              academicYear: request.academicYear,
              groupId: request.groupId,
              weekTypeIds: weekTypeIds,
            ),
          ),
        );
        return Right(remoteLoad);
      } on ServerException {
        return const Left(ServerFailure(message: "Ошибка сервера"));
      }
    } else {
      try {
        return Right(
          await localDataSource.studentLoad(
            ScheduleRequestByWeekTypeModel(
              academicYear: request.academicYear,
              groupId: request.groupId,
              weekTypeIds: weekTypeIds,
            ),
          ),
        );
      } on CacheException {
        return const Left(
          CacheFailure(message: "Ошибка локального хранилища"),
        );
      }
    }
  }
  
  @override
  Future<Either<Failure, List<SubjectModel>>> loadTeacher(ScheduleRequestByWeekTypeModel request, List<int> weekTypeIds, [bool remote = true]) {
    // TODO: implement loadTeacher
    throw UnimplementedError();
  }
}
