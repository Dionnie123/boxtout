import 'package:boxtout/ui/views/orders/orders_viewmodel.dart';
import 'package:boxtout/ui/widgets/common/dashboard/widgets/drawer_widget.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class OrdersView extends StackedView<OrdersViewModel> {
  const OrdersView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    OrdersViewModel viewModel,
    Widget? child,
  ) {
    return const Scaffold(
      body: Row(
        children: [
          DrawerWidget(),
          Expanded(
            child: Scaffold(
              body: Text("ORDERS"),
            ),
          )
        ],
      ),
    );
  }

  @override
  OrdersViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      OrdersViewModel();

  @override
  Future<void> onViewModelReady(OrdersViewModel viewModel) async {
    super.onViewModelReady(viewModel);
  }

  @override
  bool get fireOnViewModelReadyOnce => true;
}
