import 'package:boxtout/ui/common/app_colors.dart';
import 'package:boxtout/ui/common/special/scaffold_body_wrapper.dart';
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
      body: ScaffoldBodyWrapper(
        isFullWidth: true,
        builder: (context, size) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Welcome!",
                style: const TextStyle(fontSize: 18).copyWith(
                  fontWeight: FontWeight.w900,
                  fontFamily: GoogleFonts.nunito().fontFamily,
                ),
              ),
              Center(
                child: Card(
                  clipBehavior: Clip.antiAlias,
                  child: Container(
                    color: kcPrimaryColor,
                    width: 800,
                    child: CarouselSlider(
                      options: CarouselOptions(
                        aspectRatio: 3 / 0.72,
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
              Text(
                "Trendy Products",
                style: const TextStyle(fontSize: 18).copyWith(
                  fontWeight: FontWeight.w900,
                  fontFamily: GoogleFonts.nunito().fontFamily,
                ),
              ),
              const SizedBox(height: 10),
              SizedBox(
                //  color: Colors.red,
                height: 220,
                child: ListView(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  children: List.generate(10, (index) {
                    return Stack(
                      clipBehavior: Clip.none,
                      children: [
                        SizedBox(
                          width: 200,
                          height: 220,
                          child: Card(
                            clipBehavior: Clip.antiAlias,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image.asset(
                                  'assets/login_bg.jpg',
                                  height: 100,
                                  width: double.infinity,
                                  fit: BoxFit.cover,
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
                                        "Coffee $index",
                                        style: const TextStyle(fontSize: 18)
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
                                        style: const TextStyle(fontSize: 16)
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
                          right: 10,
                          bottom: -3,
                          child: Card(
                              elevation: 10,
                              color: kcPrimaryColor,
                              child: Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Icon(Icons.add),
                              )),
                        )
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
