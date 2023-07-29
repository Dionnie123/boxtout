import 'package:box_ui/box_ui.dart';
import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  const Logo({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
        margin: EdgeInsets.zero,
        color: kcPrimaryColor,
        child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: Wrap(
              crossAxisAlignment: WrapCrossAlignment.center,
              children: [
                const Icon(
                  Icons.coffee,
                  color: Colors.white,
                  size: 40,
                ),
                const SizedBox(width: 10),
                Text(
                  "COFFEECO",
                  style: headlineStyle.copyWith(color: Colors.white),
                ),
              ],
            )));
  }
}
