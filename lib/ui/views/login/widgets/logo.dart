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
            child: Text(
              "KAPE NOW",
              style: headlineStyle.copyWith(color: Colors.white),
            )));
  }
}
