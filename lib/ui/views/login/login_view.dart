import 'package:box_ui/box_ui.dart';
import 'package:boxtout/app/app.locator.dart';
import 'package:boxtout/app/app.router.dart';
import 'package:boxtout/app/models/login_form.dart';
import 'package:boxtout/ui/common/special/scaffold_body_wrapper.dart';
import 'package:flutter/material.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

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
      //   backgroundColor: kcVeryLightGrey,
      body: ScaffoldBodyWrapper(
          centered: true,
          builder: (context, size) {
            return Card(
              elevation: 10,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(25)),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 600,
                      width: double.infinity,
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(25)),
                          image: DecorationImage(
                              image: AssetImage('login_bg.jpg'),
                              fit: BoxFit.cover)),
                    ),
                  ),
                  Expanded(
                    child: LoginFormFormBuilder(builder: (x, f, c) {
                      return Padding(
                        padding: const EdgeInsets.all(25.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const BoxText.headline('SIGN IN'),
                            const BoxText.caption('Enter your details below'),
                            verticalSpaceMedium,
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
                            const SizedBox(height: 8.0),
                            ReactiveLoginFormFormConsumer(
                              builder: (context, formModel, child) {
                                return BoxButton(
                                  title: 'SIGN IN',
                                  disabled: f.form.hasErrors ? true : false,
                                );
                              },
                            ),
                            const SizedBox(height: 8.0),
                            TextButton(
                                onPressed: () {
                                  locator<NavigationService>()
                                      .navigateToRegisterView();
                                },
                                child: const Text("REGISTER HERE"))
                          ],
                        ),
                      );
                    }),
                  ),
                ],
              ),
            );
          }),
    );
  }

  @override
  LoginViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      LoginViewModel();
}
