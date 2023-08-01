import 'package:boxtout/ui/common/ui_helpers.dart';
import 'package:boxtout/ui/special/scaffold_body_wrapper.dart';
import 'package:boxtout/ui/special/sliver_grid_delegate.dart';
import 'package:boxtout/ui/views/cart/widgets/cart_breakdown.dart';
import 'package:boxtout/ui/views/cart/widgets/cart_list.dart';
import 'package:boxtout/ui/views/home/widgets/title_divider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stacked/stacked.dart';

import 'home_viewmodel.dart';
import 'widgets/product_card.dart';

class HomeViewDesktop extends StackedView<HomeViewModel> {
  const HomeViewDesktop({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    HomeViewModel viewModel,
    Widget? child,
  ) {
    return Row(
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
                Column(
                    children: ['Home', 'Menu', 'Orders', 'History'].map((e) {
                  return ListTile(
                    onTap: () {},
                    leading: const Icon(Icons.home_rounded),
                    title: Text(e),
                  );
                }).toList()),
              ],
            ),
          ),
        ),
        Expanded(
          flex: 2,
          child: Scaffold(
            body: ScaffoldBodyWrapper(
              padding: EdgeInsets.zero,
              onRefresh: () async {},
              isFullWidth: true,
              builder: (context, size) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    /*        const Padding(
                      padding: EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 0),
                      child: Row(
                        children: [
                          Expanded(child: Carousel()),
                          hSpaceSmall,
                          Expanded(child: Carousel()),
                        ],
                      ),
                    ), */
                    const TitleDivider("Trendy Products"),
                    Builder(builder: (context) {
                      const double listHeight = 270.0;
                      const double itemWidth = 165.0;
                      const double itemHeight = listHeight - 20;
                      return SizedBox(
                        height: 270,
                        child: ListView(
                          primary: false,
                          padding: const EdgeInsets.symmetric(horizontal: 15.0),
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          children: List.generate(15, (index) {
                            return Padding(
                              padding: const EdgeInsets.only(right: 10),
                              child: ProductItem(
                                index: index,
                                size: const Size(itemWidth, itemHeight),
                              ),
                            );
                          }),
                        ),
                      );
                    }),
                    const TitleDivider("Suggested For You"),
                    LayoutBuilder(builder: (context, size) {
                      const double itemWidth = double.infinity;
                      const double itemHeight = 250;
                      return Column(
                        children: [
                          GridView.builder(
                            primary: false,
                            padding:
                                const EdgeInsets.fromLTRB(15.0, 0, 15.0, 15.0),
                            itemCount: 15,
                            shrinkWrap: true,
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCountAndFixedHeight(
                              height: itemHeight,
                              crossAxisCount: size.maxWidth > 800
                                  ? 5
                                  : size.maxWidth > 500
                                      ? 3
                                      : 2,
                              crossAxisSpacing: 10.0,
                              mainAxisSpacing: 10.0,
                            ),
                            itemBuilder: (context, index) {
                              return ProductItem(
                                index: index,
                                size: const Size(itemWidth, itemHeight),
                              );
                            },
                          ),
                        ],
                      );
                    })
                  ],
                );
              },
            ),
          ),
        ),
        Container(
          color: Theme.of(context).scaffoldBackgroundColor,
          width: 400,
          child: Card(
            elevation: 1,
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              bottomLeft: Radius.circular(20),
            )),
            child: Scaffold(
              backgroundColor: Colors.transparent,
              appBar: AppBar(
                backgroundColor: Colors.transparent,
                forceMaterialTransparency: true,
                actions: [
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.settings_rounded,
                      )),
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.account_circle_rounded)),
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.shopping_cart_rounded))
                ],
              ),
              bottomSheet: const CartBreakdown(),
              body: const CartList(),
            ),
          ),
        ),
      ],
    );
  }

  @override
  HomeViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      HomeViewModel();
}
