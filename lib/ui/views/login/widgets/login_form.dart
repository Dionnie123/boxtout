import 'package:box_ui/box_ui.dart';
import 'package:boxtout/app/app.locator.dart';
import 'package:boxtout/app/app.router.dart';
import 'package:boxtout/app/models/login_dto.dart';
import 'package:flutter/material.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:stacked_services/stacked_services.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return ReactiveLoginDtoFormConsumer(builder: (context, formModel, _) {
      formModel.form.updateValue({
        'email': 'bulingitmarkdionnie@gmail.com',
        'password': 'qweqwe123',
      });
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const BoxText.headline('SIGN IN'),
          const SizedBox(height: 24.0),
          ReactiveTextField<String>(
            formControl: formModel.emailControl,
            validationMessages: {ValidationMessage.required: (_) => 'Required'},
            decoration: const InputDecoration(
              labelText: 'Email',
              helperText: '',
              helperStyle: TextStyle(height: 0.8),
              errorStyle: TextStyle(height: 0.8),
            ),
          ),
          const SizedBox(height: 8.0),
          ReactiveTextField<String>(
            formControl: formModel.passwordControl,
            obscureText: true,
            validationMessages: {
              ValidationMessage.required: (_) => 'Required',
              'mustMatch': (_) => "Not match",
            },
            textInputAction: TextInputAction.done,
            decoration: const InputDecoration(
              labelText: "Password",
              helperText: '',
              helperStyle: TextStyle(height: 0.8),
              errorStyle: TextStyle(height: 0.8),
            ),
          ),
          const SizedBox(height: 8.0),
          ReactiveLoginDtoFormConsumer(builder: (context, formModel, child) {
            return BoxButton(
              title: 'SIGN IN',
              disabled: formModel.form.hasErrors ? true : false,
            );
          }),
          const SizedBox(height: 24.0),
          TextButton(
              onPressed: () {
                formModel.form.reset();

                locator<NavigationService>().navigateToRegisterView();
              },
              child: const Text(
                "Don't have an account? Sign up",
                style: TextStyle(fontWeight: FontWeight.bold),
              )),
        ],
      );
    });
  }
}
