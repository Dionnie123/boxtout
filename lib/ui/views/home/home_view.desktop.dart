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
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stacked/stacked.dart';
import 'package:badges/badges.dart' as badges;
import 'home_viewmodel.dart';

class HomeViewDesktop extends ViewModelWidget<HomeViewModel> {
  const HomeViewDesktop({super.key});

  @override
  Widget build(BuildContext context, HomeViewModel viewModel) {
    return Scaffold(
      body: Row(
        children: [
          const DrawerWidget(),
          Expanded(
            child: Scaffold(
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
                      SizedBox(height: 15.h),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 8.0.sp),
                        child: Text(
                          "WELCOME!",
                          style: TextStyle(fontSize: 24.sp).copyWith(
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                      ),
                      SizedBox(height: 8.h),
                      const TitleDivider("Trendy Products"),
                      SizedBox(height: 8.h),
                      TrendyProductListview(
                        size: Size(double.infinity, 282.0.h),
                        products: viewModel.products,
                        itemBuilder: (context, i) {
                          return Padding(
                            padding: const EdgeInsets.only(right: 8.0),
                            child: ProductItem(
                              viewModel.products[i],
                              size: Size(165.sp, 266.0.h),
                              onAdd: () {
                                viewModel.addToCart(viewModel.products[i]);
                              },
                            ),
                          );
                        },
                      ),
                      SizedBox(height: 8.h),
                      const TitleDivider("Suggested For You"),
                      SuggestedProductListview(
                        size: Size(size.maxWidth, 266.0.h),
                        products: viewModel.products,
                        itemBuilder: (context, i) {
                          return ProductItem(
                            viewModel.products[i],
                            size: Size(double.infinity, 266.0.h),
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
            width: 0.25.sw,
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
                        size: Size(double.infinity, 95.h),
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
