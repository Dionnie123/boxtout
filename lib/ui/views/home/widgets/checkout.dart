import 'package:boxtout/app/extensions/color_extension.dart';
import 'package:boxtout/ui/common/app_colors.dart';
import 'package:boxtout/ui/common/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Checkout extends StatelessWidget {
  const Checkout({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Scaffold(
        bottomSheet: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Subtotal",
                    style: const TextStyle(fontSize: 16).copyWith(
                      fontWeight: FontWeight.w900,
                      fontFamily: GoogleFonts.nunito().fontFamily,
                    ),
                  ),
                  Text(
                    "\$99.9",
                    style: const TextStyle(fontSize: 16).copyWith(
                      fontWeight: FontWeight.w900,
                      fontFamily: GoogleFonts.nunito().fontFamily,
                    ),
                  ),
                ],
              ),
              vSpaceRegular,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Total",
                    style: const TextStyle(fontSize: 20).copyWith(
                      fontWeight: FontWeight.w900,
                      fontFamily: GoogleFonts.nunito().fontFamily,
                    ),
                  ),
                  Text(
                    "\$99.9",
                    style: const TextStyle(fontSize: 20).copyWith(
                      fontWeight: FontWeight.w900,
                      fontFamily: GoogleFonts.nunito().fontFamily,
                    ),
                  ),
                ],
              ),
              vSpaceRegular,
              ElevatedButton(
                  onPressed: () {}, child: const Text("Go to Checkout"))
            ],
          ),
        ),
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [1, 2, 3, 4, 5, 6].map((e) {
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: SizedBox(
                      width: double.infinity,
                      height: 120,
                      child: Card(
                          clipBehavior: Clip.antiAlias,
                          elevation: 3,
                          child: Row(
                            children: [
                              Image.network(
                                'https://picsum.photos/200/300?random=$e',
                                width: 100,
                                height: double.infinity,
                                fit: BoxFit.cover,
                              ),
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "Espresso Plus Milk",
                                        style: const TextStyle(fontSize: 16)
                                            .copyWith(
                                          fontWeight: FontWeight.w900,
                                          fontFamily:
                                              GoogleFonts.nunito().fontFamily,
                                        ),
                                      ),
                                      const Opacity(
                                        opacity: 0.6,
                                        child: Text("12 oz.",
                                            style: TextStyle(fontSize: 14)),
                                      ),
                                      Text(
                                        "\$19.0 x 2       ",
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
                                ),
                              ),
                              Row(
                                children: [
                                  const Card(
                                      color: kcPrimaryColor,
                                      child: Padding(
                                        padding: EdgeInsets.all(8.0),
                                        child: Icon(Icons.remove_rounded),
                                      )),
                                  Card(
                                    color: kcPrimaryColor.darken(),
                                    child: const Padding(
                                      padding: EdgeInsets.symmetric(
                                          vertical: 10.0, horizontal: 12),
                                      child: Text("99"),
                                    ),
                                  ),
                                  const Card(
                                    color: kcPrimaryColor,
                                    child: Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: Icon(Icons.add_rounded),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          )),
                    ),
                  );
                }).toList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
