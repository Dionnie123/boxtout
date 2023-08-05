import 'package:boxtout/ui/views/account/account_viewmodel.dart';
import 'package:boxtout/ui/widgets/common/dashboard/widgets/drawer_widget.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class AccountView extends StackedView<AccountViewModel> {
  const AccountView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    AccountViewModel viewModel,
    Widget? child,
  ) {
    return const Scaffold(
      body: Row(
        children: [
          DrawerWidget(),
          Expanded(
            child: Scaffold(
              body: Text("ACCOUNT"),
            ),
          )
        ],
      ),
    );
  }

  @override
  AccountViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      AccountViewModel();

  @override
  Future<void> onViewModelReady(AccountViewModel viewModel) async {
    super.onViewModelReady(viewModel);
  }

  @override
  bool get fireOnViewModelReadyOnce => true;
}
