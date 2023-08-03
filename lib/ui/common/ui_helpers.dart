import 'dart:math';

import 'package:flutter/material.dart';

Widget hSpace(double width) => SizedBox(width: width);
Widget vSpace(double height) => SizedBox(height: height);

double screenWidth(BuildContext context) => MediaQuery.of(context).size.width;
double screenHeight(BuildContext context) => MediaQuery.of(context).size.height;

double screenHeightFraction(BuildContext context,
        {int dividedBy = 1, double offsetBy = 0, double max = 3000}) =>
    min((screenHeight(context) - offsetBy) / dividedBy, max);

double screenWidthFraction(BuildContext context,
        {int dividedBy = 1, double offsetBy = 0, double max = 3000}) =>
    min((screenWidth(context) - offsetBy) / dividedBy, max);

double halfScreenWidth(BuildContext context) =>
    screenWidthFraction(context, dividedBy: 2);

double thirdScreenWidth(BuildContext context) =>
    screenWidthFraction(context, dividedBy: 3);

double quarterScreenWidth(BuildContext context) =>
    screenWidthFraction(context, dividedBy: 4);

double getResponsiveHorizontalSpaceMedium(BuildContext context) =>
    screenWidthFraction(context, dividedBy: 10);
double getResponsiveSmallFontSize(BuildContext context) =>
    getResponsiveFontSize(context, fontSize: 14, max: 15);

double getResponsiveMediumFontSize(BuildContext context) =>
    getResponsiveFontSize(context, fontSize: 16, max: 17);

double getResponsiveLargeFontSize(BuildContext context) =>
    getResponsiveFontSize(context, fontSize: 21, max: 31);

double getResponsiveExtraLargeFontSize(BuildContext context) =>
    getResponsiveFontSize(context, fontSize: 25);

double getResponsiveMassiveFontSize(BuildContext context) =>
    getResponsiveFontSize(context, fontSize: 30);

double getResponsiveFontSize(BuildContext context,
    {double? fontSize, double? max}) {
  max ??= 100;

  var responsiveSize = min(
      screenWidthFraction(context, dividedBy: 10) * ((fontSize ?? 100) / 100),
      max);

  return responsiveSize;
}

const double _tinySize = 4.0;
const double _smallSize = 8.0;
const double _regularSize = 18.0;
const double _largeSize = 24.0;
const double _xLargeSize = 48.0;

const EdgeInsets vhSpaceTiny = EdgeInsets.all(_tinySize);
const EdgeInsets vhSpaceSmall = EdgeInsets.all(_smallSize);
const EdgeInsets vhpaceRegular = EdgeInsets.all(_regularSize);
const EdgeInsets vhpaceMedium = EdgeInsets.all(_largeSize);
const EdgeInsets vhSpaceLarge = EdgeInsets.all(_xLargeSize);

const Widget hSpaceTiny = SizedBox(width: _tinySize);
const Widget hSpaceSmall = SizedBox(width: _smallSize);
const Widget hSpaceRegular = SizedBox(width: _regularSize);
const Widget hSpaceMedium = SizedBox(width: _largeSize);
const Widget hSpaceLarge = SizedBox(width: _xLargeSize);

const Widget vSpaceTiny = SizedBox(height: _tinySize);
const Widget vSpaceSmall = SizedBox(height: _smallSize);
const Widget vSpaceRegular = SizedBox(height: _regularSize);

/// vertical: 18.0
const Widget vSpaceMedium = SizedBox(height: _xLargeSize);

/// vertical: 48.0
const Widget vSpaceLarge = SizedBox(height: _xLargeSize);

bool isMobile(BuildContext context) {
  final screenWidth = MediaQuery.of(context).size.width;
  return (screenWidth < 768) ? true : false;
}

bool isTablet(BuildContext context) {
  final screenWidth = MediaQuery.of(context).size.width;
  return ((screenWidth >= 768) && (screenWidth <= 1062)) ? true : false;
}

bool isDesktop(BuildContext context) {
  final screenWidth = MediaQuery.of(context).size.width;
  return screenWidth > 1062 ? true : false;
}

EdgeInsets scaffoldBodyPadding({
  required BoxConstraints size,
  double targetWidth = 800,
  double hPadding = 0.0,
  double vPadding = 0.0,
}) {
  final width = (size.maxWidth - targetWidth) / 2;
  return EdgeInsets.symmetric(
      vertical: vPadding,
      horizontal: (size.maxWidth >= targetWidth) ? width : hPadding);
}
