import 'package:boxtout/app/extensions/color_extension.dart';
import 'package:boxtout/ui/common/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CartItem extends StatelessWidget {
  final int index;
  final Size size;
  const CartItem({super.key, required this.index, required this.size});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: SizedBox(
        width: size.width,
        height: size.height,
        child: Card(
            clipBehavior: Clip.antiAlias,
            elevation: 3,
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.network(
                      'https://picsum.photos/200/300?random=$index',
                      width: 80,
                      height: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Espresso Plus Milk Espresso Plus Milk Espresso Plus Milk",
                          maxLines: 2,
                          style: const TextStyle(fontSize: 14).copyWith(
                            fontWeight: FontWeight.w900,
                            fontFamily: GoogleFonts.nunito().fontFamily,
                          ),
                        ),
                        const Opacity(
                          opacity: 0.6,
                          child: Text(
                              "oooooooooooooooooooooooooooooooooooooooooooooooooooooooooooo",
                              maxLines: 1,
                              style: TextStyle(fontSize: 14)),
                        ),
                        Text(
                          "\$19.0 x 2       ",
                          maxLines: 1,
                          style: TextStyle(
                                  fontSize: 14,
                                  color: kcPrimaryColor.lighten(0.3))
                              .copyWith(
                            fontWeight: FontWeight.w900,
                            fontFamily: GoogleFonts.nunito().fontFamily,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      const Card(
                          color: kcPrimaryColor,
                          child: Padding(
                            padding: EdgeInsets.all(4.0),
                            child: Icon(
                              Icons.remove_rounded,
                              size: 20,
                            ),
                          )),
                      Card(
                        color: kcPrimaryColor.darken(),
                        child: const Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: 10.0, horizontal: 12),
                          child: Text("999"),
                        ),
                      ),
                      const Card(
                        color: kcPrimaryColor,
                        child: Padding(
                          padding: EdgeInsets.all(4.0),
                          child: Icon(
                            Icons.add_rounded,
                            size: 20,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
