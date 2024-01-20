List<String> getCurrentWeekDays() {
  final DateTime now = DateTime.now();
  final int monOffset = now.weekday - 1;

  return List.generate(
    6,
    (index) {
      return (now.day - monOffset + index).toString();
    },
  );
}
