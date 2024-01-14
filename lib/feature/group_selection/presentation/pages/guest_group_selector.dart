import 'package:flutter/material.dart';
import 'package:studenda_mobile/core/presentation/button_widget.dart';
import 'package:studenda_mobile/core/presentation/dropdown_widget.dart';

class GuestGroupSelectorWidget extends StatefulWidget {
  const GuestGroupSelectorWidget({super.key});

  @override
  State<GuestGroupSelectorWidget> createState() =>
      _GuestGroupSelectorWidgetState();
}

class _GuestGroupSelectorWidgetState extends State<GuestGroupSelectorWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 240, 241, 245),
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(
            Icons.chevron_left_sharp,
            color: Colors.white,
          ),
          onPressed: () => {Navigator.of(context).pop()},
        ),
        titleSpacing: 0,
        centerTitle: true,
        title: const Text(
          'Выбор группы',
          style: TextStyle(color: Colors.white, fontSize: 25),
        ),
      ),
      body: Container(
        alignment: AlignmentDirectional.center,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 17),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // StudendaDropdown(
              //   items: departments,
              //   model: departments[0],
              //   callback: (element) {
              //     departmentsDropdownValue = element!;
              //   },
              // ),
              // StudendaDropdown(
              //   items: courses,
              //   model: courses[0],
              //   callback: (element) {
              //     coursesDropdownValue = element!;
              //   },
              // ),
              // StudendaDropdown(
              //   items: groups,
              //   model: groups[0],
              //   callback: (element) {
              //     groupsDropdownValue = element!;
              //   },
              // ),
              StudendaButton(
                title: "Подтвердить",
                event: () {
                  Navigator.of(context).pushReplacementNamed('/main_nav');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
