import 'package:boxtout/ui/common/dimensions.dart';
import 'package:boxtout/ui/common/special/scaffold_body_wrapper.dart';
import 'package:boxtout/ui/views/login/widgets/logo.dart';
import 'package:boxtout/ui/views/login/widgets/register_form.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'register_viewmodel.dart';

class RegisterViewDesktop extends ViewModelWidget<RegisterViewModel> {
  const RegisterViewDesktop({super.key});

  @override
  Widget build(BuildContext context, RegisterViewModel viewModel) {
    return Scaffold(
      body: LayoutBuilder(builder: (context, size) {
        return ScaffoldBodyWrapper(
            centered: true,
            isFullWidth: true,
            padding: Dimens.computedWidth(
                size: size, targetWidth: 1366, hPadding: 15),
            builder: (context, size) {
              return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Card(
                    clipBehavior: Clip.antiAlias,
                    elevation: 10,
                    child: SizedBox(
                      height: 750,
                      width: double.infinity,
                      child: LayoutBuilder(builder: (context, size) {
                        return Row(
                          children: [
                            Expanded(
                              child: Container(
                                  width: double.infinity,
                                  height: double.infinity,
                                  decoration: const BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(
                                            'assets/register_bg.jpg'),
                                        fit: BoxFit.cover),
                                  ),
                                  child: const Padding(
                                    padding: EdgeInsets.all(25.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
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
                    ),
                  ));
            });
      }),
    );
  }
}
