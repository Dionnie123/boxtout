import 'package:badges/badges.dart';
import 'package:boxtout/ui/special/scaffold_body_wrapper.dart';
import 'package:boxtout/ui/views/home/widgets/title_divider.dart';
import 'package:boxtout/ui/widgets/common/dashboard/widgets/drawer_widget.dart';
import 'package:boxtout/ui/widgets/common/product_item/product_item.dart';
import 'package:boxtout/ui/widgets/common/suggested_product_listview/suggested_product_listview.dart';
import 'package:boxtout/ui/widgets/common/trendy_product_listview/trendy_product_listview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stacked/stacked.dart';
import 'package:badges/badges.dart' as badges;
import 'home_viewmodel.dart';

class HomeViewMobile extends ViewModelWidget<HomeViewModel> {
  const HomeViewMobile({super.key});
  @override
  Widget build(
    BuildContext context,
    HomeViewModel viewModel,
  ) {
    return Scaffold(
      drawer: const DrawerWidget(),
      appBar: AppBar(
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
            badgeContent: Text(viewModel.cartItemsQuantity.toString()),
            child: IconButton(
                onPressed: () {},
                icon: const Icon(Icons.shopping_cart_rounded)),
          ),
          const SizedBox(
            width: 20,
          )
        ],
      ),
      body: SafeArea(
        child: ScaffoldBodyWrapper(
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
                    style: const TextStyle(fontSize: 24).copyWith(
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ),
                SizedBox(height: 8.h),
                const TitleDivider("Trendy Products"),
                SizedBox(height: 8.h),
                TrendyProductListview(
                  size: const Size(double.infinity, 271.0),
                  products: viewModel.products,
                  itemBuilder: (context, i) {
                    return Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: ProductItem(
                        viewModel.products[i],
                        size: const Size(165, 266.0),
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
                  size: Size(size.maxWidth, 250.0),
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
    );
  }
}
