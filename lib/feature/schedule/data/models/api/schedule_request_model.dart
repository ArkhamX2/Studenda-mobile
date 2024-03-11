class ScheduleRequestByWeekTypeModel {
  final int groupId;
  final List<int> weekTypeIds;
  final int academicYear;

  ScheduleRequestByWeekTypeModel({required this.academicYear, required this.groupId, required this.weekTypeIds});
}
