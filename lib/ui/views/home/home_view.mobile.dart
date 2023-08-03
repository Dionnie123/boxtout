import 'package:boxtout/ui/common/ui_helpers.dart';
import 'package:boxtout/ui/special/scaffold_body_wrapper.dart';
import 'package:boxtout/ui/special/sliver_grid_delegate.dart';
import 'package:boxtout/ui/views/home/widgets/title_divider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stacked/stacked.dart';

import 'home_viewmodel.dart';
import 'widgets/product_item.dart';

class HomeViewMobile extends StackedView<HomeViewModel> {
  const HomeViewMobile({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    HomeViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      drawer: Drawer(
        width: 270,
        child: Column(
          children: [
            vSpaceMedium,
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
      appBar: AppBar(
        //  backgroundColor: kcPrimaryColor.darken(),

        //automaticallyImplyLeading: false,
        title: Text(
          "COFEECO",
          style: const TextStyle(fontSize: 18).copyWith(
            fontWeight: FontWeight.w900,
            fontFamily: GoogleFonts.nunito().fontFamily,
          ),
        ),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.logout_rounded))
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
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    children: List.generate(15, (index) {
                      final item = viewModel.products[index];
                      return ProductItem(
                        item,
                        size: const Size(itemWidth, itemHeight),
                        onAdd: () {},
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
                      padding: const EdgeInsets.fromLTRB(8.0, 0, 8.0, 8.0),
                      itemCount: 10,
                      shrinkWrap: true,
                      gridDelegate:
                          SliverGridDelegateWithFixedCrossAxisCountAndFixedHeight(
                        height: itemHeight,
                        crossAxisCount: size.maxWidth > 800
                            ? 5
                            : size.maxWidth > 500
                                ? 3
                                : 2,
                        mainAxisSpacing: 8.0,
                      ),
                      itemBuilder: (context, index) {
                        final item = viewModel.products[index];
                        return ProductItem(
                          item,
                          size: const Size(itemWidth, itemHeight),
                          onAdd: () {},
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
    );
  }

  @override
  HomeViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      HomeViewModel();
}
