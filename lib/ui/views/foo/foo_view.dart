import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'foo_viewmodel.dart';

class FooView extends StackedView<FooViewModel> {
  const FooView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    FooViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Container(
        padding: const EdgeInsets.only(left: 25.0, right: 25.0),
      ),
    );
  }

  @override
  FooViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      FooViewModel();
}
