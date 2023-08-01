import 'package:boxtout/ui/common/ui_helpers.dart';
import 'package:boxtout/ui/special/scaffold_body_wrapper.dart';
import 'package:boxtout/ui/special/sliver_grid_delegate.dart';
import 'package:boxtout/ui/views/home/widgets/carousel.dart';
import 'package:boxtout/ui/views/home/widgets/title_divider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stacked/stacked.dart';

import 'home_viewmodel.dart';
import 'widgets/checkout.dart';
import 'widgets/product_card.dart';

class HomeView extends StackedView<HomeViewModel> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    HomeViewModel viewModel,
    Widget? child,
  ) {
    return Row(
      children: [
        Drawer(
          child: Column(
              children: ['Home', 'Menu', 'Orders', 'History'].map((e) {
            return ListTile(
              onTap: () {},
              leading: const Icon(Icons.home_rounded),
              title: Text(e),
            );
          }).toList()),
        ),
        Expanded(
          child: Scaffold(
            appBar: AppBar(
              //  backgroundColor: kcPrimaryColor.darken(),
              automaticallyImplyLeading: false,
              title: Text(
                "COFEECO",
                style: const TextStyle(fontSize: 18).copyWith(
                  fontWeight: FontWeight.w900,
                  fontFamily: GoogleFonts.nunito().fontFamily,
                ),
              ),
              actions: [
                IconButton(
                    onPressed: () {}, icon: const Icon(Icons.logout_rounded))
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
                    const Padding(
                      padding: EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 0),
                      child: Row(
                        children: [
                          Expanded(child: Carousel()),
                          hSpaceSmall,
                          Expanded(child: Carousel()),
                        ],
                      ),
                    ),
                    const TitleDivider("Trendy Products"),
                    Builder(builder: (context) {
                      const double listHeight = 270.0;
                      const double itemWidth = 165.0;
                      const double itemHeight = listHeight - 20;
                      return SizedBox(
                        height: 270,
                        child: ListView(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          children: List.generate(15, (index) {
                            return ProductCard(
                              index: index,
                              size: const Size(itemWidth, itemHeight),
                            );
                          }),
                        ),
                      );
                    }),
                    const TitleDivider("Suggested For You"),
                    Builder(builder: (context) {
                      const double itemWidth = double.infinity;
                      const double itemHeight = 250;
                      return GridView.builder(
                        padding: const EdgeInsets.fromLTRB(8.0, 0, 8.0, 8.0),
                        itemCount: 10,
                        shrinkWrap: true,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCountAndFixedHeight(
                          height: itemHeight,
                          crossAxisCount: 5,
                          mainAxisSpacing: 8.0,
                        ),
                        itemBuilder: (context, index) {
                          return ProductCard(
                            index: index,
                            size: const Size(itemWidth, itemHeight),
                          );
                        },
                      );
                    })
                  ],
                );
              },
            ),
          ),
        ),
        const SizedBox(
          width: 400,
          child: Drawer(
            child: Column(children: [
              Checkout(),
            ]),
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
