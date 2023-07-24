import 'dart:math';
import 'package:flutter/material.dart';

class Dimens {
  Dimens._();

  static computedWidth({
    required BoxConstraints size,
    required double targetWidth,
    double hPadding = 0.0,
  }) {
    final width = (size.maxWidth - targetWidth) / 2;
    return EdgeInsets.symmetric(
        horizontal: (size.maxWidth >= targetWidth) ? width : hPadding);
  }

  static EdgeInsets sliverHeaderPadding(BoxConstraints constraints) {
    final double padding = max((constraints.maxWidth - 1000) / 2, 0) > 15
        ? max((constraints.maxWidth - 1000) / 2, 0)
        : 15;
    return EdgeInsets.fromLTRB(padding, 15, padding, 0);
  }

  static EdgeInsets sliverPadding1000(BoxConstraints constraints) {
    return EdgeInsets.symmetric(
        vertical: 15,
        horizontal: max((constraints.maxWidth - 1000) / 2, 0) > 15
            ? max((constraints.maxWidth - 1000) / 2, 0)
            : 15);
  }

  static EdgeInsets sliverPadding800(BoxConstraints constraints) {
    return EdgeInsets.symmetric(
        vertical: 0,
        horizontal: max((constraints.maxWidth - 800) / 2, 0) > 15
            ? max((constraints.maxWidth - 800) / 2, 0)
            : 15);
  }

  static EdgeInsets sliverPaddingForm(BoxConstraints constraints) {
    return EdgeInsets.symmetric(
        vertical: 0,
        horizontal: max((constraints.maxWidth - 400) / 2, 0) > 15
            ? max((constraints.maxWidth - 400) / 2, 0)
            : 15);
  }
}
