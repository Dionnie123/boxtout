import 'package:boxtout/app/models/register_dto.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:stacked/stacked.dart';

import 'register_view.desktop.dart';
import 'register_view.tablet.dart';
import 'register_view.mobile.dart';
import 'register_viewmodel.dart';

class RegisterView extends StackedView<RegisterViewModel> {
  const RegisterView({super.key});

  @override
  Widget builder(
    BuildContext context,
    RegisterViewModel viewModel,
    Widget? child,
  ) {
    return RegisterDtoFormBuilder(builder: (contect, formModel, _) {
      return GestureDetector(
        onTap: () {
          FocusScopeNode currentFocus = FocusScope.of(context);
          if (!currentFocus.hasPrimaryFocus) {
            currentFocus.focusedChild?.unfocus();
          }
        },
        child: ScreenTypeLayout.builder(
          mobile: (_) => const RegisterViewMobile(),
          tablet: (_) => const RegisterViewTablet(),
          desktop: (_) => const RegisterViewDesktop(),
        ),
      );
    });
  }

  @override
  RegisterViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      RegisterViewModel();
}
