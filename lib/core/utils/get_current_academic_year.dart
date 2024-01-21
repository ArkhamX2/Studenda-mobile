int getCurrentAcademicYear() {
  final now = DateTime.now();
  return now.month >= DateTime.january && now.month < DateTime.september ? now.year-1 : now.year;
}
