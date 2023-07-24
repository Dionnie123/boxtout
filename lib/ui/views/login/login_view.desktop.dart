import 'package:box_ui/box_ui.dart';
import 'package:boxtout/app/app.locator.dart';
import 'package:boxtout/app/app.router.dart';
import 'package:boxtout/app/models/login_form.dart';
import 'package:flutter/material.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import 'login_viewmodel.dart';

class LoginViewDesktop extends ViewModelWidget<LoginViewModel> {
  const LoginViewDesktop({super.key});

  @override
  Widget build(BuildContext context, LoginViewModel viewModel) {
    return ReactiveLoginFormFormConsumer(builder: (context, formModel, child) {
      return Row(
        children: [
          Expanded(
            child: Container(
              //height: size.maxHeight * 0.8,
              width: double.infinity,
              constraints: const BoxConstraints(minHeight: 600),
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      bottomLeft: Radius.circular(20)),
                  image: DecorationImage(
                      image: AssetImage('assets/login_bg.jpg'),
                      fit: BoxFit.cover)),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(30.0),
              child: SizedBox(
                height: 600,
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        const BoxText.headline('SIGN IN'),
                        const BoxText.caption('Enter your details below'),
                        const SizedBox(height: 24.0),
                        ReactiveTextField<String>(
                          formControl: formModel.emailControl,
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
                        BoxButton(
                          title: 'SIGN IN',
                          disabled: formModel.form.hasErrors ? true : false,
                        ),
                        const SizedBox(height: 8.0),
                        TextButton(
                            onPressed: () {
                              formModel.form.reset();

                              locator<NavigationService>()
                                  .navigateToRegisterView();
                            },
                            child: const Text(
                              "REGISTER HERE",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            )),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      );
    });
  }
}
