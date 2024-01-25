List<String> getCurrentWeekDays(DateTime date) {

  final int monOffset = date.weekday - 1;

  return List.generate(
    6,
    (index) {
      return index - monOffset >= 0
          ? date.add(Duration(days: index - monOffset)).day.toString()
          : date.subtract(Duration(days: index + monOffset)).day.toString();
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

List<String> getCurrentWeekDaysWithMonth(DateTime date) {
  final int monOffset = date.weekday - 1;

  final daysDates = List.generate(
    6,
    (index) {
      return index - monOffset >= 0
          ? date.add(Duration(days: index - monOffset))
          : date.subtract(Duration(days: index + monOffset));
    },
  );

  return List.generate(
      6,
      (index) =>
          "${daysDates[index].day} ${monthNames[daysDates[index].month-1]}",);
}
