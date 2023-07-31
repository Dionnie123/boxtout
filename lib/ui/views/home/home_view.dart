import 'package:boxtout/ui/common/app_colors.dart';
import 'package:boxtout/ui/common/ui_helpers.dart';
import 'package:boxtout/ui/special/scaffold_body_wrapper.dart';
import 'package:boxtout/ui/special/sliver_grid_delegate.dart';
import 'package:carousel_slider/carousel_slider.dart';
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
                    /*     Padding(
                      padding: vhSpaceSmall,
                      child: Text(
                        "Welcome!",
                        style: const TextStyle(fontSize: 18).copyWith(
                          fontWeight: FontWeight.w900,
                          fontFamily: GoogleFonts.nunito().fontFamily,
                        ),
                      ),
                    ), */

                    Padding(
                      padding: const EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 0),
                      child: Center(
                        child: Card(
                          /*            shape: const RoundedRectangleBorder(
                              //  borderRadius: BorderRadius.circular(0),
                              ), */
                          margin: EdgeInsets.zero,
                          clipBehavior: Clip.antiAlias,
                          child: Container(
                            color: kcPrimaryColor,
                            width: 700,
                            child: CarouselSlider(
                              options: CarouselOptions(
                                autoPlay: true,
                                aspectRatio: 3 / 0.9,
                                viewportFraction: 1,

                                /* viewportFraction: 0.8,
                                enlargeCenterPage: true, */
                              ),
                              items: [1, 2, 3].map((i) {
                                return Builder(
                                  builder: (BuildContext context) {
                                    return Container(
                                      width: MediaQuery.of(context).size.width,
                                      margin: EdgeInsets.zero,
                                      /*  margin:
                                          const EdgeInsets.symmetric(horizontal: 5.0), */
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage(
                                                'assets/sliders/slide$i.png'),
                                            fit: BoxFit.contain),
                                      ),
                                    );
                                  },
                                );
                              }).toList(),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: vhSpaceSmall,
                      child: Row(
                        children: [
                          Text(
                            "Trendy Products",
                            style: const TextStyle(fontSize: 18).copyWith(
                              fontWeight: FontWeight.w900,
                              fontFamily: GoogleFonts.nunito().fontFamily,
                            ),
                          ),
                          hSpaceSmall,
                          const Expanded(
                              child: Divider(
                            height: 1,
                            thickness: 1,
                          ))
                        ],
                      ),
                    ),
                    SizedBox(
                      //  color: Colors.red,
                      height: 270,
                      child: ListView(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        children: List.generate(15, (index) {
                          return ProductCard(
                            index: index,
                            size: const Size(165.0, 222.0),
                          );
                        }),
                      ),
                    ),
                    Padding(
                      padding: vhSpaceSmall,
                      child: Row(
                        children: [
                          Text(
                            "Suggested For You",
                            style: const TextStyle(fontSize: 18).copyWith(
                              fontWeight: FontWeight.w900,
                              fontFamily: GoogleFonts.nunito().fontFamily,
                            ),
                          ),
                          hSpaceSmall,
                          const Expanded(
                              child: Divider(
                            height: 1,
                            thickness: 1,
                          ))
                        ],
                      ),
                    ),
                    GridView.builder(
                      padding: const EdgeInsets.fromLTRB(
                        8.0,
                        0,
                        8.0,
                        8.0,
                      ),
                      itemCount: 10,
                      shrinkWrap: true,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCountAndFixedHeight(
                        height: 222,
                        crossAxisCount: 5,
                        mainAxisSpacing: 8.0,
                      ),
                      itemBuilder: (context, index) {
                        return ProductCard(
                          index: index,
                          size: const Size(double.infinity, 222.0),
                        );
                      },
                    )
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
