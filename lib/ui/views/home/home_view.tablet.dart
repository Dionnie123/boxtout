import 'package:badges/badges.dart';
import 'package:boxtout/app/app.router.dart';
import 'package:boxtout/ui/common/ui_helpers.dart';
import 'package:boxtout/ui/special/scaffold_body_wrapper.dart';
import 'package:boxtout/ui/views/home/widgets/title_divider.dart';
import 'package:boxtout/ui/widgets/common/cart_item/cart_item.dart';
import 'package:boxtout/ui/widgets/common/cart_listview/cart_breakdown.dart';
import 'package:boxtout/ui/widgets/common/dashboard/widgets/drawer_widget.dart';
import 'package:boxtout/ui/widgets/common/product_item/product_item.dart';
import 'package:boxtout/ui/widgets/common/side_cart/side_cart.dart';
import 'package:boxtout/ui/widgets/common/suggested_product_listview/suggested_product_listview.dart';
import 'package:boxtout/ui/widgets/common/trendy_product_listview/trendy_product_listview.dart';
import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;
import 'package:stacked/stacked.dart';
import 'home_viewmodel.dart';

class HomeViewTablet extends ViewModelWidget<HomeViewModel> {
  const HomeViewTablet({super.key});

  @override
  Widget build(
    BuildContext context,
    HomeViewModel viewModel,
  ) {
    return Container(
      color: Theme.of(context).scaffoldBackgroundColor,
      child: Row(
        children: [
          Expanded(
            child: Scaffold(
              drawer: const DrawerWidget(),
              appBar: AppBar(),
              floatingActionButton: FloatingActionButton(
                child: const Icon(Icons.add_rounded),
                onPressed: () {},
              ),
              body: ScaffoldBodyWrapper(
                padding: EdgeInsets.zero,
                onRefresh: () async {},
                isFullWidth: true,
                builder: (context, size) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      vSpaceRegular,
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Text(
                          "WELCOME!",
                          style: const TextStyle(fontSize: 24).copyWith(
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                      ),
                      vSpaceSmall,
                      const TitleDivider("Trendy Products"),
                      vSpaceSmall,
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
                      vSpaceSmall,
                      const TitleDivider("Suggested For You"),
                      SuggestedProductListview(
                        size: Size(size.maxWidth, 250.0),
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
                    ],
                  );
                },
              ),
            ),
          ),
          SideCart(
            itemCount: viewModel.cart.length,
            actionButtons: [
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
                badgeAnimation: const BadgeAnimation.scale(),
                badgeContent: Text(viewModel.cartItemsQuantity.toString()),
                child: IconButton(
                  icon: const Icon(Icons.shopping_cart_rounded),
                  onPressed: () {},
                ),
              ),
            ],
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
          )
        ],
      ),
    );
  }
}
