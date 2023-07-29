import 'package:boxtout/ui/common/special/onboard/onboarding.dart';
import 'package:boxtout/ui/common/special/scaffold_body_wrapper.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'login_viewmodel.dart';
import 'widgets/login_form.dart';

class LoginViewDesktop extends ViewModelWidget<LoginViewModel> {
  const LoginViewDesktop({super.key});

  @override
  Widget build(BuildContext context, LoginViewModel viewModel) {
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
                  const Expanded(
                      child: SingleChildScrollView(
                    padding: EdgeInsets.all(30.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [SizedBox(height: 60), LoginForm()],
                    ),
                  )),
                ],
              ),
            );
          });
    }));
  }
}
