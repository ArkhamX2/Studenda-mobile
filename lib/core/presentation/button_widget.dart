import 'package:flutter/material.dart';
import 'package:studenda_mobile_student/resources/colors.dart';

class StudendaButton extends StatelessWidget {
  final String title;
  final Function() event;
  const StudendaButton({super.key, required this.title, required this.event});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: event,
      style: ButtonStyle(
        minimumSize: const MaterialStatePropertyAll(Size(300, 50)),
        shape: MaterialStatePropertyAll(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(9),
          ),
        ),
        backgroundColor: const MaterialStatePropertyAll(
          mainButtonBackgroundColor,
        ),
        elevation: const MaterialStatePropertyAll(0),
      ),
      child: Text(
        title,
        style: const TextStyle(
          color: mainButtonForegroundColor,
          fontSize: 23,
        ),
      ),
    );
  }
}
