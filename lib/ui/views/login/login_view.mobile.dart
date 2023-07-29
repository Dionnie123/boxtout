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
                  Container(
                      height: size.maxHeight * 0.20,
                      width: double.infinity,
                      constraints: const BoxConstraints(
                        minHeight: 100,
                      ),
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
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Logo(),
                            ],
                          ),
                        ),
                      )),
                  Container(
                      constraints: BoxConstraints(
                        minHeight: size.maxHeight * 0.80,
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
