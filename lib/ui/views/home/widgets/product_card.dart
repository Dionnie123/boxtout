import 'package:boxtout/app/extensions/color_extension.dart';
import 'package:boxtout/ui/common/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProductCard extends StatelessWidget {
  final int index;
  final Size size;
  const ProductCard({super.key, required this.size, required this.index});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          width: size.width,
          height: size.height,
          margin: const EdgeInsets.only(right: 8.0),
          child: Card(
            clipBehavior: Clip.antiAlias,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  clipBehavior: Clip.antiAlias,
                  children: [
                    Image.network(
                      'https://picsum.photos/200/300?random=$index',
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
                                  horizontal: 8.0, vertical: 4.0),
                              child: Text(
                                "NEW!",
                                style: TextStyle(color: Colors.white),
                              ))),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Espresso Plus Milk",
                        style: const TextStyle(fontSize: 16).copyWith(
                          fontWeight: FontWeight.w900,
                          fontFamily: GoogleFonts.nunito().fontFamily,
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
                                color: kcPrimaryColor.lighten(0.3))
                            .copyWith(
                          fontWeight: FontWeight.w900,
                          fontFamily: GoogleFonts.nunito().fontFamily,
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
  }
}
