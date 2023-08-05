import 'package:badges/badges.dart';
import 'package:boxtout/ui/special/scaffold_body_wrapper.dart';
import 'package:boxtout/ui/views/home/widgets/title_divider.dart';
import 'package:boxtout/ui/widgets/common/dashboard/widgets/drawer_widget.dart';
import 'package:boxtout/ui/widgets/common/product_item/product_item.dart';
import 'package:boxtout/ui/widgets/common/suggested_product_listview/suggested_product_listview.dart';
import 'package:boxtout/ui/widgets/common/trendy_product_listview/trendy_product_listview.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stacked/stacked.dart';
import 'package:badges/badges.dart' as badges;
import 'home_viewmodel.dart';

class HomeViewMobile extends StackedView<HomeViewModel> {
  const HomeViewMobile({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    HomeViewModel viewModel,
    Widget? child,
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
    );
  }

  @override
  HomeViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      HomeViewModel();

  @override
  Future<void> onViewModelReady(HomeViewModel viewModel) async {
    await viewModel.start();
    super.onViewModelReady(viewModel);
  }

  @override
  bool get fireOnViewModelReadyOnce => true;
}
