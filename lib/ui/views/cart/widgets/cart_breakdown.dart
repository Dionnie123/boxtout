import 'package:boxtout/app/extensions/color_extension.dart';
import 'package:boxtout/ui/common/app_colors.dart';
import 'package:boxtout/ui/common/ui_helpers.dart';
import 'package:boxtout/ui/special/ez_button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CartBreakdown extends StatelessWidget {
  final num subTotal;
  const CartBreakdown({super.key, required this.subTotal});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        padding: const EdgeInsets.all(15),
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
                  "\$${subTotal.toStringAsFixed(2)}",
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
                  style: TextStyle(fontSize: 18, color: kcPrimaryColor.darken())
                      .copyWith(
                    fontWeight: FontWeight.w900,
                    fontFamily: GoogleFonts.nunito().fontFamily,
                  ),
                ),
                Text(
                  "\$${subTotal.toStringAsFixed(2)}",
                  style: TextStyle(fontSize: 18, color: kcPrimaryColor.darken())
                      .copyWith(
                    fontWeight: FontWeight.w900,
                    fontFamily: GoogleFonts.nunito().fontFamily,
                  ),
                ),
              ],
            ),
            vSpaceRegular,
            EzButton.elevated(
                background: kcPrimaryColor,
                onTap: () {},
                title: "Go to Checkout")
          ],
        ),
      ),
    );
  }
}
