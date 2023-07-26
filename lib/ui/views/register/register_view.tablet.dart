import 'package:boxtout/ui/common/special/scaffold_body_wrapper.dart';
import 'package:boxtout/ui/views/login/widgets/logo.dart';
import 'package:boxtout/ui/views/login/widgets/register_form.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'register_viewmodel.dart';

class RegisterViewTablet extends ViewModelWidget<RegisterViewModel> {
  const RegisterViewTablet({super.key});

  @override
  Widget build(BuildContext context, RegisterViewModel viewModel) {
    return Scaffold(
        body: ScaffoldBodyWrapper(
            centered: true,
            isFullWidth: true,
            padding: EdgeInsets.zero,
            builder: (context, size) {
              return SizedBox(
                height: size.maxHeight,
                width: size.maxWidth,
                child: LayoutBuilder(builder: (context, size) {
                  return Row(
                    children: [
                      Expanded(
                        child: Container(
                            width: double.infinity,
                            height: double.infinity,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('assets/register_bg.jpg'),
                                  fit: BoxFit.cover),
                            ),
                            child: const Padding(
                              padding: EdgeInsets.all(25.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [Logo()],
                              ),
                            )),
                      ),
                      const Expanded(
                          child: Padding(
                        padding: EdgeInsets.all(25.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [RegisterForm()],
                        ),
                      )),
                    ],
                  );
                }),
              );
            }));
  }
}
