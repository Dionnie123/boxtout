import 'package:boxtout/app/models/login_dto.dart';
import 'package:boxtout/app/models/register_dto.dart';
import 'package:boxtout/ui/common/special/scaffold_body_wrapper.dart';
import 'package:boxtout/ui/common/ui_helpers.dart';
import 'package:boxtout/ui/views/auth/widgets/logo.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'auth_viewmodel.dart';
import 'widgets/login_form.dart';
import 'widgets/register_form.dart';

class AuthViewMobile extends ViewModelWidget<AuthViewModel> {
  const AuthViewMobile({super.key});

  @override
  Widget build(BuildContext context, AuthViewModel viewModel) {
    return SafeArea(
      child: Scaffold(body: ScaffoldBodyWrapper(
        builder: (p0, p1) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Logo(),
              vSpaceMedium,
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
          );
        },
      )),
    );
  }
}
