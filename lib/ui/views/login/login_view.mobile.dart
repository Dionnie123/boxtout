import 'package:boxtout/ui/common/special/scaffold_body_wrapper.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'login_viewmodel.dart';
import 'widgets/login_form.dart';
import 'widgets/logo.dart';

class LoginViewMobile extends ViewModelWidget<LoginViewModel> {
  const LoginViewMobile({super.key});

  @override
  Widget build(BuildContext context, LoginViewModel viewModel) {
    return Scaffold(
        body: ScaffoldBodyWrapper(
            centered: true,
            isFullWidth: true,
            padding: EdgeInsets.zero,
            builder: (context, size) {
              return Column(
                children: [
                  SizedBox(
                      width: double.infinity,
                      height: size.maxHeight * 0.25,
                      child: Container(
                        width: double.infinity,
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assets/login_bg.jpg'),
                                fit: BoxFit.cover)),
                        child: const Padding(
                          padding: EdgeInsets.all(15.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Logo(),
                            ],
                          ),
                        ),
                      )),
                  Container(
                      constraints: BoxConstraints(
                        minHeight: size.maxHeight * 0.75,
                      ),
                      child: const Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 15.0, vertical: 30),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [LoginForm()],
                        ),
                      )),
                ],
              );
            }));
  }
}
