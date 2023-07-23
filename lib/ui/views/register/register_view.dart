import 'package:box_ui/box_ui.dart';
import 'package:boxtout/app/models/register_form.dart';
import 'package:boxtout/ui/common/special/scaffold_body_wrapper.dart';
import 'package:flutter/material.dart';
import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';
import 'package:stacked/stacked.dart';

import 'register_viewmodel.dart';

class RegisterView extends StackedView<RegisterViewModel> {
  const RegisterView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    RegisterViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
        appBar: AppBar(),
        extendBodyBehindAppBar: true,
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
                        height: size.maxHeight * 0.8,
                        width: double.infinity,
                        constraints: const BoxConstraints(minHeight: 600),
                        decoration: const BoxDecoration(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(25),
                                bottomLeft: Radius.circular(25)),
                            image: DecorationImage(
                                image: AssetImage('assets/register_bg.jpg'),
                                fit: BoxFit.cover)),
                      ),
                    ),
                    Expanded(
                      child: RegisterFormFormBuilder(builder: (x, f, c) {
                        return Padding(
                          padding: const EdgeInsets.all(30.0),
                          child: WillPopScope(
                            onWillPop: () async {
                              f.form.reset();
                              return true;
                            },
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const BoxText.headline('SIGN UP'),
                                const BoxText.caption(
                                    'Enter your details below'),
                                verticalSpaceMedium,
                                ReactiveTextField<String>(
                                  formControl: f.fullNameControl,
                                  validationMessages: {
                                    ValidationMessage.required: (_) =>
                                        'Required',
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
                                  formControl: f.emailControl,
                                  validationMessages: {
                                    ValidationMessage.required: (_) =>
                                        'Required'
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
                                  formControl: f.passwordControl,
                                  obscureText: true,
                                  validationMessages: {
                                    ValidationMessage.required: (_) =>
                                        'Required'
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
                                  formControl: f.passwordConfirmationControl,
                                  obscureText: true,
                                  validationMessages: {
                                    ValidationMessage.required: (_) =>
                                        'Required',
                                    ValidationMessage.mustMatch: (_) =>
                                        "Password must match",
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
                                            borderRadius:
                                                BorderRadius.circular(4)),
                                        formControl: f.acceptLicenseControl,
                                        fillColor:
                                            const MaterialStatePropertyAll(
                                          kcPrimaryColor,
                                        )),
                                    const Expanded(
                                        child: Text(
                                            "I accept terms and conditions & privacy policy"))
                                  ],
                                ),
                                verticalSpaceMedium,
                                ReactiveRegisterFormFormConsumer(
                                  builder: (context, formModel, child) {
                                    return BoxButton(
                                      title: 'SIGN UP',
                                      disabled: f.form.hasErrors ? true : false,
                                    );
                                  },
                                ),
                              ],
                            ),
                          ),
                        );
                      }),
                    ),
                  ],
                ),
              );
            }));
  }

  @override
  RegisterViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      RegisterViewModel();
}
