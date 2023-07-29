import 'package:box_ui/box_ui.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Logo extends StatelessWidget {
  const Logo({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
        margin: EdgeInsets.zero,
        color: kcPrimaryColor,
        child: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 15.0, vertical: 4.0),
            child: Wrap(
              crossAxisAlignment: WrapCrossAlignment.center,
              runAlignment: WrapAlignment.center,
              children: [
                const Icon(
                  Icons.coffee,
                  color: Colors.white,
                  size: 40,
                ),
                const SizedBox(width: 10),
                Text(
                  "COFFEECO",
                  style: const TextStyle(
                    fontSize: 28.0,
                    color: Colors.white,
                  ).copyWith(
                    fontWeight: FontWeight.w700,
                    fontFamily: GoogleFonts.pacifico().fontFamily,
                  ),
                ),
              ],
            )));
  }
}
