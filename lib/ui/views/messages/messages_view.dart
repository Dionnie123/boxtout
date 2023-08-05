import 'package:boxtout/ui/views/messages/messages_viewmodel.dart';
import 'package:boxtout/ui/widgets/common/dashboard/widgets/drawer_widget.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class MessagesView extends StackedView<MessagesViewModel> {
  const MessagesView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    MessagesViewModel viewModel,
    Widget? child,
  ) {
    return const Scaffold(
      body: Row(
        children: [
          DrawerWidget(),
          Expanded(
            child: Scaffold(
              body: Text("MESSAGES"),
            ),
          )
        ],
      ),
    );
  }

  @override
  MessagesViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      MessagesViewModel();

  @override
  Future<void> onViewModelReady(MessagesViewModel viewModel) async {
    super.onViewModelReady(viewModel);
  }

  @override
  bool get fireOnViewModelReadyOnce => true;
}
