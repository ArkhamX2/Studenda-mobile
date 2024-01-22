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

const monthNames =[
  'января',
  'февраля',
  'марта',
  'апреля',
  'мая',
  'июня',
  'июля',
  'августа',
  'сентября',
  'октября',
  'ноября',
  'декабря',
];

List<String> getCurrentWeekDaysWithMonth() {
  final DateTime now = DateTime.now();
  final int monOffset = now.weekday - 1;

  final daysDates = List.generate(
    6,
    (index) {
      return index - monOffset > 0
          ? now.add(Duration(days: index - monOffset))
          : now.subtract(Duration(days: index - monOffset));
    },
  );

  return List.generate(
      6,
      (index) =>
          "${daysDates[index].day} ${monthNames[daysDates[index].month-1]}",);
}
