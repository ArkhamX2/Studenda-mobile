import 'package:flutter/material.dart';
import 'package:studenda_mobile_student/core/presentation/label/studenda_aligned_label_widget.dart';
import 'package:studenda_mobile_student/core/presentation/label/studenda_default_label_widget.dart';

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
    //TODO: Вёрстка выборов по макету
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: const Color(0xFFAA8DD3)),
        borderRadius: const BorderRadius.all(Radius.circular(5)),
        color: Colors.white,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5),
        child: DropdownMenu<T>(
          enableFilter: true,
          requestFocusOnTap: true,
          inputDecorationTheme: const InputDecorationTheme(
            filled: true,
            fillColor: Colors.white,
          ),
          expandedInsets: const EdgeInsets.all(0),
          onSelected: (T? value) {
            widget.callback(value);
            setState(() {
              item = value;
            });
          },
          menuStyle: MenuStyle(
            backgroundColor: MaterialStateProperty.resolveWith((states) {
              return Colors.green; //your desired selected background color
            }),
          ),
          dropdownMenuEntries:
              widget.items.map<DropdownMenuEntry<T>>(
            (T? item) {
              return DropdownMenuEntry<T>(
                style: MenuItemButton.styleFrom(backgroundColor: Colors.white, ),
                value: item!,
                label: item.toString(),
              );
            },
          ).toList(),
        ),
      ),
    );
  }
}
