import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:studenda_mobile_student/core/presentation/UI/studenda_loading_widget.dart';
import 'package:studenda_mobile_student/core/presentation/button_widget.dart';
import 'package:studenda_mobile_student/core/presentation/label/studenda_aligned_label_widget.dart';
import 'package:studenda_mobile_student/core/presentation/label/studenda_colored_label_widget.dart';
import 'package:studenda_mobile_student/core/presentation/label/studenda_weighted_label_widget.dart';
import 'package:studenda_mobile_student/core/presentation/studenda_input_text_field_style.dart';
import 'package:studenda_mobile_student/core/utils/verification_code_validator.dart';
import 'package:studenda_mobile_student/feature/auth/data/models/security_request_model.dart';
import 'package:studenda_mobile_student/feature/auth/presentation/bloc/bloc/auth_bloc.dart';
import 'package:studenda_mobile_student/feature/auth/presentation/widgets/auth_app_bar_widget.dart';
import 'package:studenda_mobile_student/injection_container.dart';
class VerificationAuthPage extends StatefulWidget {
  final String email;
  const VerificationAuthPage({super.key, required this.email});

  @override
  State<VerificationAuthPage> createState() => _VerificationAuthPageState();
}

class _VerificationAuthPageState extends State<VerificationAuthPage> {
  final controller = TextEditingController();

  final formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 240, 241, 245),
      appBar: const AuthAppBarWidget(),
      body: buildBody(),
    );
  }

  BlocProvider<AuthBloc> buildBody() {
    return BlocProvider(
      create: (context) => sl<AuthBloc>(),
      child: _BodyWidget(
        formKey: formKey,
        widget: widget,
        controller: controller,
      ),
    );
  }
}

class _BodyWidget extends StatelessWidget {
  const _BodyWidget({
    required this.formKey,
    required this.widget,
    required this.controller,
  });

  final GlobalKey<FormState> formKey;
  final VerificationAuthPage widget;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    final state = context.watch<AuthBloc>().state;

    return state == const AuthState.authLoading()
        ? const Center(
            child: StudendaLoadingWidget(),
          )
        : VerificationWidet(
            formKey: formKey,
            widget: widget,
            controller: controller,
          );
  }
}

class VerificationWidet extends StatelessWidget {
  const VerificationWidet({
    super.key,
    required this.formKey,
    required this.widget,
    required this.controller,
  });

  final GlobalKey<FormState> formKey;
  final VerificationAuthPage widget;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 17),
      child: Form(
        key: formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _VerificationInfoWidget(widget: widget),
            const SizedBox(
              height: 17,
            ),
            _VerificationCodeInputWidget(controller: controller),
            const SizedBox(
              height: 23,
            ),
            _ButtonContainerWidget(formKey: formKey),
          ],
        ),
      ),
    );
  }
}

class _ButtonContainerWidget extends StatelessWidget {
  const _ButtonContainerWidget({
    required this.formKey,
  });

  final GlobalKey<FormState> formKey;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        StudendaButton(
          title: "Получить код повторно",
          event: () {
            //Повторный запрос с емейлом
          },
        ),
        const SizedBox(
          height: 17,
        ),
        StudendaButton(
          title: "Подтвердить",
          event: () {
            final form = formKey.currentState!;
            if (form.validate()) {
              final bloc = context.read<AuthBloc>();
              bloc.add(
                const AuthEvent.auth(
                  authRequest: SecurityRequestModel(
                    email: "test@test.ru",
                    password: "Test-22222",
                    roleName: "admin",
                  ),
                ),
              );
              Navigator.of(context).pushNamed("/main_nav");
            }
          },
        ),
      ],
    );
  }
}

class _VerificationCodeInputWidget extends StatelessWidget {
  const _VerificationCodeInputWidget({
    required this.controller,
  });

  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFormField(
          controller: controller,
          decoration: studendaInputStyle,
          keyboardType: TextInputType.number,
          autofillHints: const [AutofillHints.oneTimeCode],
          validator: verificationCodeValidator,
        ),
        const SizedBox(
          height: 5,
        ),
        //TODO: Сделать каунтдаун на 2 минуты

        const StudendaColoredLabelWidget(
          text: "Повторно код можно получить через",
          fontSize: 20,
          color: Color.fromARGB(160, 101, 59, 159),
        ),
      ],
    );
  }
}

class _VerificationInfoWidget extends StatelessWidget {
  const _VerificationInfoWidget({
    required this.widget,
  });

  final VerificationAuthPage widget;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        StudendaWeightedLabelWidget(
          text: widget.email,
          fontSize: 20,
          weight: FontWeight.bold,
        ),
        const SizedBox(
          height: 32,
        ),
        const StudendaAlignedLabelWidget(
          text:
              "На почту был отправлен код из N цифр. Введите в поле ниже код из письма:",
          fontSize: 18,
          align: TextAlign.center,
        ),
      ],
    );
  }
}
