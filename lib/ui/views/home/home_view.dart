import 'package:boxtout/app/extensions/color_extension.dart';
import 'package:boxtout/ui/common/app_colors.dart';
import 'package:boxtout/ui/common/ui_helpers.dart';
import 'package:boxtout/ui/special/scaffold_body_wrapper.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stacked/stacked.dart';

import 'home_viewmodel.dart';

class HomeView extends StackedView<HomeViewModel> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    HomeViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kcPrimaryColor.darken(),
        automaticallyImplyLeading: false,
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
              Center(
                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(0)),
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
              Padding(
                padding: vhSpaceSmall,
                child: Text(
                  "Trendy Products",
                  style: const TextStyle(fontSize: 18).copyWith(
                    fontWeight: FontWeight.w900,
                    fontFamily: GoogleFonts.nunito().fontFamily,
                  ),
                ),
              ),
              SizedBox(
                //  color: Colors.red,
                height: 270,
                child: ListView(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  children: List.generate(10, (index) {
                    return Stack(
                      clipBehavior: Clip.none,
                      children: [
                        Container(
                          width: 165,
                          height: 260,
                          margin: const EdgeInsets.only(right: 8.0),
                          child: Card(
                            clipBehavior: Clip.antiAlias,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Stack(
                                  clipBehavior: Clip.antiAlias,
                                  children: [
                                    Image.asset(
                                      'assets/login_bg.jpg',
                                      height: 100,
                                      width: double.infinity,
                                      fit: BoxFit.cover,
                                    ),
                                    Positioned(
                                      right: 0,
                                      top: 0,
                                      child: Container(
                                          color: Colors.red,
                                          child: const Padding(
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 8.0,
                                                  vertical: 4.0),
                                              child: Text(
                                                "NEW!",
                                                style: TextStyle(
                                                    color: Colors.white),
                                              ))),
                                    )
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "Espresso Plus Milk $index",
                                        style: const TextStyle(fontSize: 16)
                                            .copyWith(
                                          fontWeight: FontWeight.w900,
                                          fontFamily:
                                              GoogleFonts.nunito().fontFamily,
                                        ),
                                      ),
                                      const Opacity(
                                        opacity: 0.6,
                                        child: Text(
                                            "A strong, bold flavor with high-caffein content.",
                                            style: TextStyle(fontSize: 14)),
                                      ),
                                      Text(
                                        "\$19.0",
                                        style: TextStyle(
                                                fontSize: 16,
                                                color:
                                                    kcPrimaryColor.lighten(0.3))
                                            .copyWith(
                                          fontWeight: FontWeight.w900,
                                          fontFamily:
                                              GoogleFonts.nunito().fontFamily,
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        const Positioned(
                          right: 20,
                          bottom: 0,
                          child: Card(
                              elevation: 10,
                              color: kcPrimaryColor,
                              child: Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Icon(Icons.add),
                              )),
                        ),
                      ],
                    );
                  }),
                ),
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
}
