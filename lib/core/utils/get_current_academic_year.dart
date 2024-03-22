int getCurrentAcademicYear(DateTime date) {
  return date.month >= DateTime.january && date.month < DateTime.july ? date.year-1 : date.year;
}
