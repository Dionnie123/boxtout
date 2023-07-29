import 'package:boxtout/app/models/login_dto.dart';
import 'package:boxtout/ui/common/special/onboard/onboarding.dart';
import 'package:boxtout/ui/common/special/scaffold_body_wrapper.dart';
import 'package:boxtout/ui/views/login/widgets/login_form.dart';
import 'package:flutter/material.dart';
import 'package:reactive_forms/reactive_forms.dart';
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
                    padding: const EdgeInsets.all(30.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const SizedBox(height: 60),
                        ReactiveLoginDtoForm(
                          key: ObjectKey(viewModel.loginFormModel),
                          form: viewModel.loginFormModel,
                          child: ReactiveFormBuilder(
                              form: () => viewModel.loginFormModel.form,
                              onWillPop: null,
                              builder: (context, formGroup, child) {
                                return const LoginForm();
                              }),
                        )
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
