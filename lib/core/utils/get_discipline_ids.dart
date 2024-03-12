import 'package:studenda_mobile_student/feature/schedule/data/models/subject/subject_model.dart';

List<int> getDisciplineIds(List<SubjectModel> succededSubjectList) {
  return succededSubjectList.map((e) => e.disciplineId ?? -1).toSet().toList();
}
