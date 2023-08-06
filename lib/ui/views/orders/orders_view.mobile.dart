import 'package:boxtout/ui/special/scaffold_body_wrapper.dart';
import 'package:boxtout/ui/widgets/common/dashboard/widgets/drawer_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stacked/stacked.dart';
import 'orders_viewmodel.dart';

class OrdersViewMobile extends ViewModelWidget<OrdersViewModel> {
  const OrdersViewMobile({super.key});
  @override
  Widget build(
    BuildContext context,
    OrdersViewModel viewModel,
  ) {
    return Scaffold(
      drawer: const DrawerWidget(),
      appBar: AppBar(),
      body: ScaffoldBodyWrapper(
        padding: EdgeInsets.zero,
        onRefresh: () async {},
        isFullWidth: true,
        builder: (context, size) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(15, 15, 15, 0),
                child: Text(
                  "ORDERS",
                  style: const TextStyle(fontSize: 24).copyWith(
                    fontWeight: FontWeight.w900,
                    fontFamily: GoogleFonts.nunito().fontFamily,
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}