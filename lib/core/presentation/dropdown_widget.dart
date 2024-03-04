import 'package:flutter/material.dart';
import 'package:studenda_mobile_student/feature/group_selection/presentation/pages/guest_group_selector.dart';

class StudendaDropdown<T> extends StatefulWidget {
  final List<T?> items;
  final T? model;
  final Function(T?) callback;

  const StudendaDropdown({
    super.key,
    required this.items,
    required this.model,
    required this.callback,
  });

  @override
  State<StudendaDropdown<T>> createState() => StudendaDropdownState<T>();
}

class StudendaDropdownState<T> extends State<StudendaDropdown<T>> {
  T? item;

  @override
  void initState() {
    super.initState();
    item = widget.model;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: dropdownBoxDecoration,
      child: Theme(
        data: Theme.of(context).copyWith(
          canvasColor: Colors.white,
        ),
        child: DropdownButtonHideUnderline(
          child: ButtonTheme(
            alignedDropdown: true,
            child: DropdownButton<T>(
              onChanged: (T? value) {
                widget.callback(value);
                setState(() {
                  item = value;
                });
              },
              value: item,
              padding: const EdgeInsets.only(left: 12),
              isExpanded: true,
            
              items: widget.items.map<DropdownMenuItem<T>>(
                (T? item) {
                  return DropdownMenuItem<T>(
                    value: item as T,
                    child: Center(child: Text(item.toString())),
                  );
                },
              ).toList(),
            ),
          ),
        ),
      ),
    );
  }
}
