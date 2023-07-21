import 'package:boxtout/app/models/login_form.dart';
import 'package:flutter/material.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:stacked/stacked.dart';

import 'login_viewmodel.dart';

class LoginView extends StackedView<LoginViewModel> {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    LoginViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(15),
        child: LoginFormFormBuilder(builder: (x, f, c) {
          return Column(
            children: [
              ReactiveTextField<String>(
                formControl: f.emailControl,
                validationMessages: {
                  ValidationMessage.required: (_) => 'Required'
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
                formControl: f.passwordControl,
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
            ],
          );
        }),
      ),
    );
  }

  @override
  LoginViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      LoginViewModel();
}
