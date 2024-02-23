import 'package:flutter/material.dart';

class JournalMainScreenPage extends StatefulWidget {
  const JournalMainScreenPage({super.key});

  @override
  State<JournalMainScreenPage> createState() =>
      _JournalMainScreenPageState();
}

class _JournalMainScreenPageState extends State<JournalMainScreenPage> {
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
      body: const Padding(
        padding: EdgeInsets.all(14.0),
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