import 'package:boxtout/app/extensions/color_extension.dart';
import 'package:boxtout/ui/common/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProductItem extends StatelessWidget {
  final int index;
  final Size size;
  const ProductItem({super.key, required this.size, required this.index});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        SizedBox(
          width: size.width,
          height: size.height,
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
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Espresso Cappuccino Espresso Cappuccino",
                          maxLines: 2,
                          style: const TextStyle(fontSize: 16).copyWith(
                            fontWeight: FontWeight.w900,
                            fontFamily: GoogleFonts.nunito().fontFamily,
                          ),
                        ),
                        const Opacity(
                          opacity: 0.6,
                          child: Text(
                              "A classic Italian coffee made with equal parts of espresso, steamed milk, and milk foam. It has a strong coffee taste with a creamy texture.",
                              maxLines: 2,
                              style: TextStyle(fontSize: 14)),
                        ),
                        Text(
                          "\$19.0",
                          style: TextStyle(
                                  fontSize: 16,
                                  color: kcPrimaryColor.darken(0.2))
                              .copyWith(
                            fontWeight: FontWeight.w900,
                            fontFamily: GoogleFonts.nunito().fontFamily,
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
        const Positioned(
          right: 20,
          bottom: 10,
          child: Card(
              elevation: 5,
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
