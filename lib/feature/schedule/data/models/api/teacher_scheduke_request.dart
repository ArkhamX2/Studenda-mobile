class TeacherRequestByWeekTypeModel {
  final int teacherId;
  final List<int> weekTypeIds;
  final int academicYear;

  TeacherRequestByWeekTypeModel({required this.academicYear, required this.teacherId, required this.weekTypeIds});
}
