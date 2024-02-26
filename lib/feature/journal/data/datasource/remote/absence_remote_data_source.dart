import 'package:studenda_mobile_student/core/data/datasource/datasource.dart';
import 'package:studenda_mobile_student/feature/journal/data/model/api/absence_request_model.dart';
import 'package:studenda_mobile_student/feature/journal/data/model/attendancy/absence_model.dart';

class AbsenceRemoteDataSource
    extends RemoteDataSource<List<AbsenceModel>, AbsenceRequestModel> {
  @override
  Future<List<AbsenceModel>> load(AbsenceRequestModel request) {
    // TODO: implement load
    throw UnimplementedError();
  }
}
