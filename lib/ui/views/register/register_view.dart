import 'package:box_ui/box_ui.dart';
import 'package:boxtout/app/app.locator.dart';
import 'package:boxtout/app/app.router.dart';
import 'package:boxtout/app/models/register_form.dart';
import 'package:boxtout/ui/common/dimensions.dart';
import 'package:boxtout/ui/common/special/scaffold_body_wrapper.dart';
import 'package:boxtout/ui/common/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import 'register_viewmodel.dart';

class RegisterView extends StackedView<RegisterViewModel> {
  const RegisterView({super.key});

  @override
  Widget builder(
    BuildContext context,
    RegisterViewModel viewModel,
    Widget? child,
  ) {
    return RegisterFormFormBuilder(builder: (contect, formModel, _) {
      Widget logo() {
        return Card(
            margin: EdgeInsets.zero,
            color: kcPrimaryColor,
            child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12.0),
                child: Text(
                  "NESCOFFEE",
                  style: headlineStyle.copyWith(color: Colors.white),
                )));
      }

      Widget copyright() {
        return const Text("@2023 Nescoffee | All rights reserved");
      }

      Widget form() {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const BoxText.headline('SIGN UP'),
            const BoxText.caption('Enter your details below'),
            const SizedBox(height: 24.0),
            ReactiveTextField<String>(
              formControl: formModel.fullNameControl,
              validationMessages: {
                ValidationMessage.required: (_) => 'Required',
              },
              textInputAction: TextInputAction.next,
              decoration: const InputDecoration(
                labelText: "Fullname",
                helperText: '',
                helperStyle: TextStyle(height: 0.8),
                errorStyle: TextStyle(height: 0.8),
              ),
            ),
            const SizedBox(height: 8.0),
            ReactiveTextField<String>(
              formControl: formModel.emailControl,
              validationMessages: {
                ValidationMessage.required: (_) => 'Required'
              },
              textInputAction: TextInputAction.next,
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
                ValidationMessage.required: (_) => 'Required'
              },
              textInputAction: TextInputAction.next,
              decoration: const InputDecoration(
                labelText: "Password",
                helperText: '',
                helperStyle: TextStyle(height: 0.8),
                errorStyle: TextStyle(height: 0.8),
              ),
            ),
            const SizedBox(height: 8.0),
            ReactiveTextField<String>(
              formControl: formModel.passwordConfirmationControl,
              obscureText: true,
              validationMessages: {
                ValidationMessage.required: (_) => 'Required',
                ValidationMessage.mustMatch: (_) => "Password must match",
              },
              textInputAction: TextInputAction.next,
              decoration: const InputDecoration(
                labelText: "Confirm Password",
                helperText: '',
                helperStyle: TextStyle(height: 0.8),
                errorStyle: TextStyle(height: 0.8),
              ),
            ),
            Row(
              children: [
                ReactiveCheckbox(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4)),
                    formControl: formModel.acceptLicenseControl,
                    fillColor: const MaterialStatePropertyAll(
                      kcPrimaryColor,
                    )),
                const Expanded(
                    child:
                        Text("I accept terms and conditions & privacy policy"))
              ],
            ),
            const SizedBox(height: 24.0),
            ReactiveRegisterFormFormConsumer(
              builder: (context, formModel, child) {
                return BoxButton(
                  title: 'SIGN UP',
                  disabled: formModel.form.hasErrors ? true : false,
                );
              },
            ),
            const SizedBox(height: 8.0),
            TextButton(
                onPressed: () {
                  formModel.form.reset();

                  locator<NavigationService>().navigateToLoginView();
                },
                child: const Text(
                  "Already have an account? Sign in",
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
                        image: AssetImage('assets/register_bg.jpg'),
                        fit: BoxFit.cover)),
              )
            : Container(
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20)),
                    image: DecorationImage(
                        image: AssetImage('assets/register_bg.jpg'),
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
                    elevation: 10,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: !isMobile(context)
                        ? SizedBox(
                            height: 750,
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
  RegisterViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      RegisterViewModel();
}
