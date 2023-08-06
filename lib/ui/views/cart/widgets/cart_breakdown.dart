import 'package:boxtout/app/extensions/color_extension.dart';
import 'package:boxtout/ui/common/app_colors.dart';
import 'package:boxtout/ui/common/ui_helpers.dart';
import 'package:boxtout/ui/special/ez_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CartBreakdown extends StatelessWidget {
  final num subTotal;
  const CartBreakdown({super.key, required this.subTotal});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        padding: const EdgeInsets.all(15),
        child: SingleChildScrollView(
          primary: false,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Subtotal",
                    style: TextStyle(fontSize: 16.sp).copyWith(
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  Text(
                    "\$${subTotal.toStringAsFixed(2)}",
                    style: TextStyle(fontSize: 16.sp).copyWith(
                      fontWeight: FontWeight.w900,
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
                    style: TextStyle(
                            fontSize: 18.sp, color: kcPrimaryColor.darken())
                        .copyWith(
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  Text(
                    "\$${subTotal.toStringAsFixed(2)}",
                    style: TextStyle(
                            fontSize: 18.sp, color: kcPrimaryColor.darken())
                        .copyWith(
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ],
              ),
              vSpaceRegular,
              EzButton(onPressed: () {}, title: "Go to Checkout")
            ],
          ),
        ),
      ),
    );
  }
}
