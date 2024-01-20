import 'package:flutter/material.dart';

class JournalMainScreenWidget extends StatefulWidget {
  const JournalMainScreenWidget({super.key});

  @override
  State<JournalMainScreenWidget> createState() =>
      _JournalMainScreenWidgetState();
}

class _JournalMainScreenWidgetState extends State<JournalMainScreenWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 240, 241, 245),
      appBar: AppBar(
        titleSpacing: 0,
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: const Text(
          'Журнал',
          style: TextStyle(color: Colors.white, fontSize: 25),
        ),
        actions: [
          IconButton(
            onPressed: () => {Navigator.of(context).pushNamed('/notification')},
            icon: const Icon(
              Icons.notifications,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(14.0),
        child: SingleChildScrollView(
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.start,
            // children: subjects
            //     .map((element) => SubjectItemWidget(subject: element))
            //     .toList(),
          ),
        ),
      ),
    );
  }
}
