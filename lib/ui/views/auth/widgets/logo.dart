import 'package:boxtout/ui/common/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Logo extends StatelessWidget {
  const Logo({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          width: 50,
          height: 50,
          child: Image.asset(
            'assets/splash.png',
            width: 50,
          ),
        ),
        hSpaceRegular,
        Text(
          "COFFEECO",
          style: const TextStyle(fontSize: 24).copyWith(
            fontWeight: FontWeight.w900,
            fontFamily: GoogleFonts.nunito().fontFamily,
          ),
        ),
      ],
    );
  }
}
