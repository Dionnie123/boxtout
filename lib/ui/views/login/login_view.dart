import 'package:boxtout/app/models/login_form.dart';
import 'package:boxtout/ui/common/special/scaffold_body_wrapper.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:stacked/stacked.dart';

import 'login_view.desktop.dart';
import 'login_view.mobile.dart';
import 'login_viewmodel.dart';

class LoginView extends StackedView<LoginViewModel> {
  const LoginView({super.key});

  @override
  Widget builder(
    BuildContext context,
    LoginViewModel viewModel,
    Widget? child,
  ) {
    return LoginFormFormBuilder(builder: (x, f, c) {
      return Scaffold(
        appBar: AppBar(),
        body: ScaffoldBodyWrapper(
            centered: true,
            builder: (context, size) {
              return Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                child: ScreenTypeLayout.builder(
                  mobile: (context) => LoginViewMobile(size),
                  tablet: (context) => const LoginViewDesktop(),
                  desktop: (context) => const LoginViewDesktop(),
                ),
              );
            }),
      );
    });
  }

  @override
  LoginViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      LoginViewModel();
}
