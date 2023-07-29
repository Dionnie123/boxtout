import 'package:boxtout/ui/common/special/onboard/onboarding.dart';
import 'package:boxtout/ui/common/special/scaffold_body_wrapper.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'login_viewmodel.dart';
import 'widgets/login_form.dart';
import 'widgets/logo.dart';

class LoginViewTablet extends ViewModelWidget<LoginViewModel> {
  const LoginViewTablet({super.key});

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
                    child: Container(
                        width: double.infinity,
                        height: double.infinity,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/login_bg.jpg'),
                              fit: BoxFit.cover),
                        ),
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
