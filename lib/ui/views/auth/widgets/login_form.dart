import 'package:boxtout/app/models/login_dto.dart';
import 'package:boxtout/ui/special/ez_button.dart';
import 'package:boxtout/ui/special/ez_text.dart';
import 'package:boxtout/ui/views/auth/auth_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:stacked/stacked.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    final viewModel = getParentViewModel<AuthViewModel>(context);
    return ReactiveLoginDtoFormConsumer(builder: (context, formModel, _) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const EzText.headline('SIGN IN'),
          const SizedBox(height: 24.0),
          ReactiveTextField<String>(
            formControl: formModel.emailControl,
            textInputAction: TextInputAction.next,
            validationMessages: {
              ValidationMessage.required: (_) => 'Required',
              ValidationMessage.email: (_) => 'Invalid email'
            },
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
            return EzButton.elevated(
              busy: viewModel.isBusy,
              title: 'SIGN IN',
              disabled: formModel.form.hasErrors ? true : false,
              onTap: formModel.form.hasErrors
                  ? null
                  : () async {
                      await viewModel.signIn(
                          email: formModel.emailControl?.value,
                          password: formModel.passwordControl?.value);
                    },
            );
          }),
          const SizedBox(height: 18.0),
          TextButton(
              onPressed: () {
                formModel.form.reset();

                viewModel.authType = AuthType.signUp;
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
