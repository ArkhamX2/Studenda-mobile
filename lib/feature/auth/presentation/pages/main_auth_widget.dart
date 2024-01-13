import 'package:flutter/material.dart';
import 'package:studenda_mobile/core/presentation/guest_group_selector.dart';
import 'package:studenda_mobile/feature/auth/presentation/pages/email_auth_widget.dart';
import 'package:studenda_mobile/resources/UI/button_widget.dart';
import 'package:studenda_mobile/resources/colors.dart';

class MainAuthPage extends StatefulWidget {
  const MainAuthPage({super.key});

  @override
  State<MainAuthPage> createState() => _MainAuthPageState();
}

class _MainAuthPageState extends State<MainAuthPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: mainAuthBackgroundColor,
      body: _BodyWidget(),
    );
  }
}

class _BodyWidget extends StatelessWidget {
  const _BodyWidget();

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: AlignmentDirectional.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          //TODO: Icon here
          const SizedBox(
            height: 40,
          ),
          StudendaButton(
            title: "Войти",
            event: () {
              Navigator.of(context).push(
                MaterialPageRoute<void>(
                  builder: (context) => const EmailAuthPage(),
                ),
              );
            },
          ),
          const SizedBox(
            height: 34,
          ),
          StudendaButton(
            title: "Войти как гость",
            event: () {
              Navigator.of(context).push(
                MaterialPageRoute<void>(
                  builder: (context) => const GuestGroupSelectorWidget(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
