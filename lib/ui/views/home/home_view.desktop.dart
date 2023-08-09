import 'package:boxtout/app/app.router.dart';
import 'package:boxtout/ui/common/ui_helpers.dart';
import 'package:boxtout/ui/widgets/common/cart_item/cart_item.dart';
import 'package:boxtout/ui/widgets/common/cart_listview/cart_breakdown.dart';
import 'package:boxtout/ui/widgets/common/dashboard/widgets/drawer_widget.dart';
import 'package:boxtout/ui/widgets/common/product_item/product_item.dart';
import 'package:boxtout/ui/widgets/common/side_cart/side_cart.dart';
import 'package:boxtout/ui/widgets/common/suggested_product_listview/suggested_product_listview.dart';
import 'package:boxtout/ui/widgets/common/trendy_product_listview/trendy_product_listview.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stacked/stacked.dart';
import 'home_viewmodel.dart';
import 'package:badges/badges.dart' as badges;

import 'widgets/title_divider.dart';

class HomeViewDesktop extends ViewModelWidget<HomeViewModel> {
  const HomeViewDesktop({super.key});

  @override
  Widget build(BuildContext context, HomeViewModel viewModel) {
    return Container(
      color: Theme.of(context).scaffoldBackgroundColor,
      child: Scaffold(
          appBar: AppBar(
            leading: Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 2.0, horizontal: 0.0),
              child: Image.asset(
                'assets/splash.png',
              ),
            ),
            title: Text(
              "COFFEECO",
              style: const TextStyle(fontSize: 24).copyWith(
                fontWeight: FontWeight.w900,
                fontFamily: GoogleFonts.nunito().fontFamily,
              ),
            ),
            actions: [
              IconButton(
                icon: const Icon(
                  Icons.settings_rounded,
                ),
                onPressed: () {},
              ),
              IconButton(
                icon: const Icon(Icons.account_circle_rounded),
                onPressed: () async {
                  await viewModel.signOut();
                },
              ),
              badges.Badge(
                badgeAnimation: const badges.BadgeAnimation.scale(),
                badgeContent: Text(viewModel.cartItemsQuantity.toString()),
                child: Builder(builder: (context) {
                  return IconButton(
                    icon: const Icon(Icons.shopping_cart_rounded),
                    onPressed: () {
                      Scaffold.of(context).openEndDrawer();
                    },
                  );
                }),
              ),
              hSpaceMedium,
            ],
          ),
          endDrawer: SideCart(
            itemCount: viewModel.cart.length,
            actionButtons: const [],
            cartBreakdown: CartBreakdown(subTotal: viewModel.cartTotal),
            itemBuilder: (context, index) {
              return CartItem(
                viewModel.cart[index],
                onAdd: () {
                  viewModel.addCartItemQuantity(viewModel.cart[index].id ?? -1);
                },
                onMinus: () {
                  viewModel
                      .minusCartItemQuantity(viewModel.cart[index].id ?? -1);
                },
                size: const Size(double.infinity, 100),
              );
            },
          ),
          floatingActionButton: FloatingActionButton(
            child: const Icon(Icons.add_rounded),
            onPressed: () {},
          ),
          body: Row(
            children: [
              const DrawerWidget(),
              Expanded(
                child: CustomScrollView(slivers: [
                  SliverAppBar(
                    toolbarHeight: 78,
                    // backgroundColor: Colors.transparent,
                    //  forceMaterialTransparency: true,
                    pinned: true,
                    title: Text(
                      "WELCOME",
                      style: const TextStyle(fontSize: 24).copyWith(
                        fontWeight: FontWeight.w900,
                        fontFamily: GoogleFonts.nunito().fontFamily,
                      ),
                    ),
                    actions: [
                      IconButton(
                        icon: const Icon(
                          Icons.settings_rounded,
                        ),
                        onPressed: () {},
                      ),
                      IconButton(
                        icon: const Icon(Icons.account_circle_rounded),
                        onPressed: () async {
                          await viewModel.signOut();
                        },
                      ),
                      badges.Badge(
                        badgeAnimation: const badges.BadgeAnimation.scale(),
                        badgeContent:
                            Text(viewModel.cartItemsQuantity.toString()),
                        child: Builder(builder: (context) {
                          return IconButton(
                            icon: const Icon(Icons.shopping_cart_rounded),
                            onPressed: () {
                              Scaffold.of(context).openEndDrawer();
                            },
                          );
                        }),
                      ),
                      hSpaceMedium,
                    ],
                  ),
                  const TitleDivider("Trendy Products"),
                  TrendyProductListview(
                    size: const Size(double.infinity, 271.0),
                    products: viewModel.products,
                    itemBuilder: (context, i) {
                      return Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: ProductItem(
                          onTap: () {
                            viewModel.navService.navigateToFooView();
                          },
                          viewModel.products[i],
                          size: const Size(165, 266.0),
                          onAdd: () {
                            viewModel.addToCart(viewModel.products[i]);
                          },
                        ),
                      );
                    },
                  ),
                  const TitleDivider("Suggested for you"),
                  SliverPadding(
                    padding: const EdgeInsets.all(15),
                    sliver: SuggestedProductListview(
                      size: const Size(double.infinity, 250.0),
                      products: viewModel.products,
                      itemBuilder: (context, i) {
                        return ProductItem(
                          onTap: () {},
                          viewModel.products[i],
                          size: const Size(double.infinity, 250.0),
                          onAdd: () {
                            viewModel.addToCart(viewModel.products[i]);
                          },
                        );
                      },
                    ),
                  ),
                ]),
              ),
            ],
          )),
    );
  }
}
