import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:studenda_mobile_student/core/constant_values/routes.dart';
import 'package:studenda_mobile_student/core/presentation/UI/studenda_loading_widget.dart';
import 'package:studenda_mobile_student/core/presentation/button_widget.dart';
import 'package:studenda_mobile_student/core/presentation/label/studenda_default_label_widget.dart';
import 'package:studenda_mobile_student/core/presentation/studenda_input_text_field_style.dart';
import 'package:studenda_mobile_student/core/utils/email_validator.dart';
import 'package:studenda_mobile_student/feature/auth/data/models/security_request_model.dart';
import 'package:studenda_mobile_student/feature/auth/presentation/bloc/bloc/auth_bloc.dart';
import 'package:studenda_mobile_student/feature/auth/presentation/widgets/auth_app_bar_widget.dart';
import 'package:studenda_mobile_student/feature/group_selection/presentation/bloc/main_group_selection_bloc/main_group_selector_bloc.dart';
import 'package:studenda_mobile_student/resources/colors.dart';

class LoginAuthPage extends StatefulWidget {
  const LoginAuthPage({super.key});

  @override
  State<LoginAuthPage> createState() => _LoginAuthPageState();
}

class _LoginAuthPageState extends State<LoginAuthPage> {
  final emailTextController = TextEditingController();
  final passwordTextController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    emailTextController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final authBloc = context.watch<AuthBloc>();
    return Scaffold(
      backgroundColor: mainBackgroundColor,
      appBar: const AuthAppBarWidget(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 17),
        child: authBloc.state.when(
          initial: () => _FormWidget(
            formKey: formKey,
            emailTextController: emailTextController,
            passwordTextController: passwordTextController,
          ),
          authSuccess: (success) {
            final selectorBloc = context.watch<MainGroupSelectorBloc>();
            return selectorBloc.state.when(
              initial: () => const Center(child: StudendaLoadingWidget()),
              loading: () => const Center(child: StudendaLoadingWidget()),
              groupSuccess: (group) {
                Navigator.of(context).pushReplacementNamed(scheduleRoute);
                return Container();
              },
              courseSuccess: (course) =>
                  const Center(child: StudendaLoadingWidget()),
              departmentSuccess: (department) =>
                  const Center(child: StudendaLoadingWidget()),
              fail: (message) {
                Navigator.of(context).pushReplacementNamed(scheduleRoute);
                return Container();
              },
            );
          },
          authLoading: () => const Center(
            child: StudendaLoadingWidget(),
          ),
          authFail: (message) => _FormWidget(
            formKey: formKey,
            emailTextController: emailTextController,
            passwordTextController: passwordTextController,
          ),
        ),
      ),
    );
  }
}

class _FormWidget extends StatelessWidget {
  const _FormWidget({
    required this.formKey,
    required this.emailTextController,
    required this.passwordTextController,
  });

  final GlobalKey<FormState> formKey;
  final TextEditingController emailTextController;
  final TextEditingController passwordTextController;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const StudendaDefaultLabelWidget(
            text: "Еmail:",
            fontSize: 20,
          ),
          const SizedBox(
            height: 23,
          ),
          _EmailFieldWidget(controller: emailTextController),
          const SizedBox(
            height: 23,
          ),
          const StudendaDefaultLabelWidget(
            text: "Пароль:",
            fontSize: 20,
          ),
          const SizedBox(
            height: 23,
          ),
          _PasswordFieldWidget(controller: passwordTextController),
          const SizedBox(
            height: 23,
          ),
          Center(
            child: StudendaButton(
              title: "Подтвердить",
              event: () {
                //TODO: Get the code
                final form = formKey.currentState!;
                if (form.validate()) {
                  final email = emailTextController.text;
                  final password = passwordTextController.text;
                  final authBloc = context.read<AuthBloc>();
                  authBloc.add(
                    AuthEvent.auth(
                      authRequest: SecurityRequestModel(
                        email: email,
                        password: password,
                        roleName: "admin",
                      ),
                    ),
                  );
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}

class _EmailFieldWidget extends StatefulWidget {
  final TextEditingController controller;

  const _EmailFieldWidget({
    required this.controller,
  });

  @override
  State<_EmailFieldWidget> createState() => _EmailFieldWidgetState();
}

class _EmailFieldWidgetState extends State<_EmailFieldWidget> {
  @override
  void initState() {
    super.initState();

    widget.controller.addListener(onListen);
  }

  @override
  void dispose() {
    widget.controller.removeListener(onListen);
    super.dispose();
  }

  void onListen() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      decoration: studendaInputStyle,
      keyboardType: TextInputType.emailAddress,
      autofillHints: const [AutofillHints.email],
      validator: studendaEmailValidator,
    );
  }
}

class _PasswordFieldWidget extends StatefulWidget {
  final TextEditingController controller;

  const _PasswordFieldWidget({
    required this.controller,
  });

  @override
  State<_PasswordFieldWidget> createState() => _PasswordFieldWidgetState();
}

class _PasswordFieldWidgetState extends State<_PasswordFieldWidget> {
  @override
  void initState() {
    super.initState();

    widget.controller.addListener(onListen);
  }

  @override
  void dispose() {
    widget.controller.removeListener(onListen);
    super.dispose();
  }

  void onListen() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      decoration: studendaInputStyle,
      keyboardType: TextInputType.emailAddress,
      autofillHints: const [AutofillHints.password],
    );
  }
}
