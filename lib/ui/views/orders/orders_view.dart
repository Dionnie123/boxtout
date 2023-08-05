import 'package:boxtout/app/app.router.dart';
import 'package:boxtout/ui/common/ui_helpers.dart';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stacked/stacked.dart';

import 'orders_viewmodel.dart';

class OrdersView extends StackedView<OrdersViewModel> {
  const OrdersView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    OrdersViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      body: Row(
        children: [
          Container(
            color: Theme.of(context).scaffoldBackgroundColor,
            width: 270,
            child: Card(
              elevation: 2,
              child: Column(
                children: [
                  Padding(
                    padding: vhpaceRegular,
                    child: Row(
                      children: [
                        Image.asset(
                          'assets/splash.png',
                          width: 50,
                        ),
                        hSpaceRegular,
                        Text(
                          "COFEECO",
                          style: const TextStyle(fontSize: 24).copyWith(
                            fontWeight: FontWeight.w900,
                            fontFamily: GoogleFonts.nunito().fontFamily,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Column(children: [
                    ListTile(
                      splashColor: Colors.transparent,
                      onTap: () {
                        viewModel.navService.navigateToHomeView();
                      },
                      leading: const Icon(Icons.home_rounded),
                      title: const Text('Home'),
                    ),
                    ListTile(
                      splashColor: Colors.transparent,
                      onTap: () {
                        viewModel.navService.navigateToOrdersView();
                      },
                      leading: const Icon(Icons.menu_book_rounded),
                      title: const Text('Orders'),
                    ),
                    ListTile(
                      splashColor: Colors.transparent,
                      onTap: () {
                        viewModel.navService.navigateToMessagesView();
                      },
                      leading: const Icon(Icons.chat_rounded),
                      title: const Text('Messages'),
                    ),
                    ListTile(
                      splashColor: Colors.transparent,
                      onTap: () {
                        viewModel.navService.navigateToAccountView();
                      },
                      leading: const Icon(Icons.account_circle_rounded),
                      title: const Text('Account'),
                    )
                  ]),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  OrdersViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      OrdersViewModel();
}
