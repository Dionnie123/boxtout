import 'package:another_transformer_page_view/another_transformer_page_view.dart';
import 'package:boxtout/ui/common/special/onboard/buildin_transformers.dart';
import 'package:boxtout/ui/common/ui_helpers.dart';
import 'package:boxtout/ui/views/login/widgets/logo.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'showup.dart';

class OnboaringItem {
  final String testimonial;
  final String personName;
  final String personTitle;
  final Color color;
  final String image;
  OnboaringItem(
      {required this.testimonial,
      required this.personName,
      required this.personTitle,
      required this.color,
      required this.image});
}

class Onboarding extends StatefulWidget {
  const Onboarding({super.key});

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  final list = [
    OnboaringItem(
        testimonial:
            "As the CEO of a busy tech company, I rely on the CoffeeCo app to fuel my day. The convenience of ordering my favorite cappuccino and having it ready when I arrive is a game-changer. This app is a lifesaver!",
        color: Colors.orange,
        image: 'assets/login_bg.jpg',
        personName: "John Smith",
        personTitle: "CEO"),
    OnboaringItem(
      testimonial:
          "The CoffeeCo app has revolutionized my coffee routine! As a barista myself, I appreciate how easy it is to explore their diverse coffee menu and place orders. It's a must-have for all coffee enthusiasts!",
      color: Colors.red,
      image: 'assets/register_bg.jpg',
      personName: "Emily Johnson",
      personTitle: "Barista",
    ),
    OnboaringItem(
      testimonial:
          "I've tried many coffee apps, but CoffeeCo stands out with its user-friendly interface and lightning-fast order processing. It's the only app I trust to get my coffee just right",
      color: Colors.green,
      image: 'assets/login_bg.jpg',
      personName: "Mark Dionnie",
      personTitle: "App Developer",
    )
  ];

  final controller = TransformerPageController(
    initialPage: 0,
    itemCount: 3,
    loop: true,
  );

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        TransformerPageView(
          itemCount: list.length,
          pageController: controller,
          loop: true,
          transformer: ThreeDTransformer(),
          itemBuilder: (BuildContext context, int index) {
            final item = list[index];
            return Stack(
              children: [
                Container(
                  foregroundDecoration: const BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Colors.brown,
                        Colors.transparent,
                      ],
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                      stops: [0, 0.8],
                    ),
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            /*     colorFilter: ColorFilter.mode(
                              item.color.withOpacity(0.4),
                              BlendMode.srcOver,
                            ), */
                            image: AssetImage(item.image),
                            fit: BoxFit.cover)),
                  ),
                ),
                CustomScrollView(
                  slivers: [
                    SliverFillRemaining(
                      hasScrollBody: false,
                      child: Padding(
                        padding: const EdgeInsets.all(40.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            SizedBox(
                              width: 800,
                              child: ShowUp(
                                delay: 200,
                                child: Text(
                                  "\"${item.testimonial}.\"",
                                  style: const TextStyle(
                                    fontSize: 30.0,
                                    color: Colors.white,
                                  ).copyWith(
                                    fontWeight: FontWeight.w900,
                                    fontFamily: GoogleFonts.nunito().fontFamily,
                                  ),
                                ),
                              ),
                            ),
                            vSpaceMedium,
                            ShowUp(
                              delay: 300,
                              child: Text(
                                item.personName,
                                style: const TextStyle(
                                  fontSize: 24.0,
                                  color: Colors.white,
                                ).copyWith(
                                  fontWeight: FontWeight.w700,
                                  fontFamily: GoogleFonts.nunito().fontFamily,
                                ),
                              ),
                            ),
                            ShowUp(
                              delay: 400,
                              child: Text(
                                item.personTitle,
                                style: const TextStyle(
                                  fontSize: 20.0,
                                  color: Colors.white,
                                ).copyWith(
                                  fontWeight: FontWeight.w500,
                                  fontFamily: GoogleFonts.nunito().fontFamily,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            );
          },
        ),
        const Padding(
          padding: EdgeInsets.all(40.0),
          child: Logo(),
        ),
        Align(
          alignment: Alignment.bottomRight,
          child: Padding(
              padding: const EdgeInsets.all(40.0),
              child: SmoothPageIndicator(
                  controller: controller, // PageController
                  count: list.length,
                  effect: const WormEffect(
                    activeDotColor: Colors.white,
                    dotWidth: 12,
                    dotHeight: 12,
                  ), // your preferred effect
                  onDotClicked: (index) {})),
        )
      ],
    );
  }
}