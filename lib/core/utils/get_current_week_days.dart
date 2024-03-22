List<String> getCurrentWeekSixDays(DateTime date) {

  final int monOffset = date.weekday - 1;

  return List.generate(
    6,
    (index) {
      final day = index - monOffset >= 0
          ? date.add(Duration(days: (index - monOffset).abs())).day.toString()
          : date.subtract(Duration(days: (index - monOffset).abs())).day.toString();
      return day;
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

List<String> getCurrentWeekSixDaysWithMonth(DateTime date) {
  final int monOffset = date.weekday - 1;

  final daysDates = List.generate(
    6,
    (index) {
      return index - monOffset >= 0
          ? date.add(Duration(days: (index - monOffset).abs()))
          : date.subtract(Duration(days: (index - monOffset).abs()));
    },
  );

  return List.generate(
      6,
      (index) =>
          "${daysDates[index].day} ${monthNames[daysDates[index].month-1]}",);
}

int getCurrentWeekDay(){
  return DateTime.now().weekday;
}
