import 'package:boxtout/app/models/login_dto.dart';
import 'package:boxtout/app/models/register_dto.dart';
import 'package:boxtout/ui/common/special/onboard/onboarding.dart';
import 'package:boxtout/ui/common/special/scaffold_body_wrapper.dart';
import 'package:boxtout/ui/views/auth/widgets/login_form.dart';
import 'package:boxtout/ui/views/auth/widgets/register_form.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'auth_viewmodel.dart';

class AuthViewDesktop extends ViewModelWidget<AuthViewModel> {
  const AuthViewDesktop({super.key});

  @override
  Widget build(BuildContext context, AuthViewModel viewModel) {
    return Scaffold(body: LayoutBuilder(builder: (context, size) {
      return ScaffoldBodyWrapper(
          isFullWidth: true,
          padding: EdgeInsets.zero,
          builder: (context, size) {
            return SizedBox(
              height: size.maxHeight,
              width: size.maxWidth,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(
                    child: SizedBox(
                        width: size.maxWidth,
                        height: size.maxHeight,
                        child: const Onboarding()),
                  ),
                  Expanded(
                      child: SingleChildScrollView(
                    padding: const EdgeInsets.all(40.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        (viewModel.authType == AuthType.signIn)
                            ? ReactiveLoginDtoForm(
                                key: ObjectKey(viewModel.loginFormModel),
                                form: viewModel.loginFormModel,
                                child: const LoginForm(),
                              )
                            : ReactiveRegisterDtoForm(
                                key: ObjectKey(viewModel.registerFormModel),
                                form: viewModel.registerFormModel,
                                child: const RegisterForm(),
                              ),
                      ],
                    ),
                  )),
                ],
              ),
            );
          });
    }));
  }
}
