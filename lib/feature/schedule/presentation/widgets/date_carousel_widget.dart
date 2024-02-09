import 'package:flutter/material.dart';
import 'package:studenda_mobile_student/feature/schedule/presentation/widgets/position_values.dart';
import 'package:studenda_mobile_student/resources/colors.dart';

class DateCarouselWidget extends StatelessWidget {
  final List<String> dates;

  final Function(int) onDateTap;
  final Function() onPrevTap;
  final Function() onNextTap;

  const DateCarouselWidget({
    super.key,
    required this.dates,
    required this.onDateTap,
    required this.onPrevTap,
    required this.onNextTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Color.fromRGBO(211, 201, 253, 0.4),
        borderRadius: BorderRadius.all(Radius.circular(5)),
      ),
      child: Expanded(
        child: GestureDetector(
          onHorizontalDragEnd: (details) {
            if (details.primaryVelocity! < 0) {
              onNextTap();
            }
            if (details.primaryVelocity! > 0) {
              onPrevTap();
            }
          },
          child: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 26, vertical: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: dates
                  .asMap()
                  .map(
                    (key, value) => MapEntry(
                      key,
                      GestureDetector(
                        onTap: () {
                          onDateTap(key);
                        },
                        child: _DateCarouselItemWidget(
                          day: key,
                          date: value,
                        ),
                      ),
                    ),
                  )
                  .values
                  .toList(),
            ),
          ),
        ),
      ),
    );
  }
}

class _DateCarouselItemWidget extends StatelessWidget {
  final int day;
  final String date;

  const _DateCarouselItemWidget({
    required this.day,
    required this.date,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          date,
          style: const TextStyle(
            color: mainForegroundColor,
            fontSize: 30,
          ),
        ),
        Text(
          weekPositionValues[day],
          style: const TextStyle(
            color: mainForegroundColor,
            fontSize: 12,
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    );
  }
}
