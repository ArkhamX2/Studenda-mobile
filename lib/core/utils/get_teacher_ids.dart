import 'package:studenda_mobile_student/feature/schedule/data/models/subject/subject_model.dart';

List<int> getTeacherIds(List<SubjectModel> succededSubjectList) {
  return succededSubjectList.map((e) => e.accountId ?? -1).toSet().toList();
}
