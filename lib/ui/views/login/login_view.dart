import 'package:box_ui/box_ui.dart';
import 'package:boxtout/app/app.locator.dart';
import 'package:boxtout/app/app.router.dart';
import 'package:boxtout/app/models/login_form.dart';
import 'package:boxtout/ui/common/dimensions.dart';
import 'package:boxtout/ui/common/special/scaffold_body_wrapper.dart';
import 'package:boxtout/ui/common/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import 'login_viewmodel.dart';

class LoginView extends StackedView<LoginViewModel> {
  const LoginView({super.key});

  @override
  Widget builder(
    BuildContext context,
    LoginViewModel viewModel,
    Widget? child,
  ) {
    return LoginFormFormBuilder(builder: (contect, formModel, _) {
      Widget logo() {
        return const Card(
            margin: EdgeInsets.zero,
            color: kcPrimaryColor,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.0),
              child: BoxText.headline('NESCOFFEE'),
            ));
      }

      Widget copyright() {
        return const Text("@2023 Nescoffee | All rights reserved");
      }

      Widget form() {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
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
            ReactiveLoginFormFormConsumer(builder: (context, formModel, child) {
              return BoxButton(
                title: 'SIGN IN',
                disabled: formModel.form.hasErrors ? true : false,
              );
            }),
            const SizedBox(height: 8.0),
            TextButton(
                onPressed: () {
                  formModel.form.reset();

                  locator<NavigationService>().navigateToRegisterView();
                },
                child: const Text(
                  "REGISTER HERE",
                  style: TextStyle(fontWeight: FontWeight.bold),
                )),
          ],
        );
      }

      Widget card({required Widget child}) {
        return Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          child: const SizedBox(
            height: 600,
          ),
        );
      }

      Widget bg() {
        return !isMobile(context)
            ? Container(
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        bottomLeft: Radius.circular(20)),
                    image: DecorationImage(
                        image: AssetImage('assets/login_bg.jpg'),
                        fit: BoxFit.cover)),
              )
            : Container(
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20)),
                    image: DecorationImage(
                        image: AssetImage('assets/login_bg.jpg'),
                        fit: BoxFit.cover)),
              );
      }

      return Scaffold(
        appBar: AppBar(),
        extendBodyBehindAppBar: true,
        body: LayoutBuilder(builder: (context, size) {
          return ScaffoldBodyWrapper(
              centered: true,
              isFullWidth: true,
              padding: Dimens.computedWidth(
                  size: size, targetWidth: 1000, hPadding: 8.0),
              builder: (context, size) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Card(
                    margin: EdgeInsets.zero,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: !isMobile(context)
                        ? SizedBox(
                            height: 600,
                            width: double.infinity,
                            child: LayoutBuilder(builder: (context, size) {
                              return Row(
                                children: [
                                  Expanded(child: bg()),
                                  Expanded(
                                      child: Padding(
                                    padding: const EdgeInsets.all(25.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        logo(),
                                        form(),
                                        copyright(),
                                      ],
                                    ),
                                  )),
                                ],
                              );
                            }),
                          )
                        : Column(
                            children: [
                              SizedBox(
                                  height: size.maxHeight * 0.3, child: bg()),
                              Container(
                                  constraints: BoxConstraints(
                                    minHeight: size.maxHeight * 0.7,
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(25.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        logo(),
                                        const SizedBox(height: 28.0),
                                        form(),
                                        const SizedBox(height: 28.0),
                                        copyright(),
                                      ],
                                    ),
                                  )),
                            ],
                          ),
                  ),
                );
              });
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
