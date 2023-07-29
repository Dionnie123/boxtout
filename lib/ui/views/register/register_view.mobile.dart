import 'package:boxtout/ui/common/special/scaffold_body_wrapper.dart';
import 'package:boxtout/ui/views/login/widgets/logo.dart';
import 'package:boxtout/ui/views/login/widgets/register_form.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'register_viewmodel.dart';

class RegisterViewMobile extends ViewModelWidget<RegisterViewModel> {
  const RegisterViewMobile({super.key});

  @override
  Widget build(BuildContext context, RegisterViewModel viewModel) {
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
                      height: size.maxHeight * 0.20,
                      child: Container(
                        width: double.infinity,
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assets/register_bg.jpg'),
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
                          children: [RegisterForm()],
                        ),
                      )),
                ],
              );
            }));
  }
}
