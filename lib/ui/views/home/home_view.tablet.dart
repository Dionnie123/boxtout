import 'package:badges/badges.dart';
import 'package:boxtout/ui/special/scaffold_body_wrapper.dart';
import 'package:boxtout/ui/views/cart/widgets/cart_breakdown.dart';
import 'package:boxtout/ui/views/home/widgets/title_divider.dart';
import 'package:boxtout/ui/widgets/common/cart_item/cart_item.dart';
import 'package:boxtout/ui/widgets/common/dashboard/widgets/drawer_widget.dart';
import 'package:boxtout/ui/widgets/common/product_item/product_item.dart';
import 'package:boxtout/ui/widgets/common/suggested_product_listview/suggested_product_listview.dart';
import 'package:boxtout/ui/widgets/common/trendy_product_listview/trendy_product_listview.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stacked/stacked.dart';
import 'package:badges/badges.dart' as badges;
import 'home_viewmodel.dart';

class HomeViewTablet extends ViewModelWidget<HomeViewModel> {
  const HomeViewTablet({super.key});

  @override
  Widget build(
    BuildContext context,
    HomeViewModel viewModel,
  ) {
    return Scaffold(
      body: Row(
        children: [
          Expanded(
            child: Scaffold(
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
                          "WELCOME!",
                          style: const TextStyle(fontSize: 24).copyWith(
                            fontWeight: FontWeight.w900,
                            fontFamily: GoogleFonts.nunito().fontFamily,
                          ),
                        ),
                      ),
                      const TitleDivider("Trendy Products"),
                      TrendyProductListview(
                        products: viewModel.products,
                        itemBuilder: (context, i) {
                          return Padding(
                            padding: const EdgeInsets.only(right: 8.0),
                            child: ProductItem(
                              viewModel.products[i],
                              size: const Size(165, 250.0),
                              onAdd: () {
                                viewModel.addToCart(viewModel.products[i]);
                              },
                            ),
                          );
                        },
                      ),
                      const TitleDivider("Suggested For You"),
                      SuggestedProductListview(
                        size: Size(size.maxWidth, size.maxHeight),
                        products: viewModel.products,
                        itemBuilder: (context, i) {
                          return ProductItem(
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
          Drawer(
            width: 380,
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              bottomLeft: Radius.circular(20),
            )),
            child: Scaffold(
                backgroundColor: Colors.transparent,
                appBar: AppBar(
                  automaticallyImplyLeading: false,
                  backgroundColor: Colors.transparent,
                  forceMaterialTransparency: true,
                  actions: [
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.settings_rounded,
                        )),
                    IconButton(
                        onPressed: () async {
                          await viewModel.signOut();
                        },
                        icon: const Icon(Icons.account_circle_rounded)),
                    badges.Badge(
                      badgeAnimation: const BadgeAnimation.scale(),
                      badgeContent:
                          Text(viewModel.cartItemsQuantity.toString()),
                      child: IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.shopping_cart_rounded)),
                    ),
                    const SizedBox(
                      width: 20,
                    )
                  ],
                ),
                bottomSheet: CartBreakdown(subTotal: viewModel.cartTotal),
                body: Padding(
                  padding: const EdgeInsets.only(bottom: 160),
                  child: ListView.builder(
                    padding: const EdgeInsets.all(15),
                    itemCount: viewModel.cart.length,
                    itemBuilder: (context, index) {
                      return CartItem(
                        viewModel.cart[index],
                        onAdd: () {
                          viewModel.addCartItemQuantity(
                              viewModel.cart[index].id ?? -1);
                        },
                        onMinus: () {
                          viewModel.minusCartItemQuantity(
                              viewModel.cart[index].id ?? -1);
                        },
                        size: const Size(double.infinity, 100),
                      );
                    },
                  ),
                )),
          ),
        ],
      ),
    );
  }
}
