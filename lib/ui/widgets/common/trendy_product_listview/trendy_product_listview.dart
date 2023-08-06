import 'package:boxtout/app/models/product_dto.dart';
import 'package:boxtout/ui/common/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TrendyProductListview extends StatelessWidget {
  final Size size;
  final List<ProductDto> products;
  final Widget? Function(BuildContext, int) itemBuilder;
  const TrendyProductListview(
      {super.key,
      required this.products,
      required this.itemBuilder,
      required this.size});

  @override
  Widget build(
    BuildContext context,
  ) {
    return Builder(builder: (context) {
      return Container(
        width: size.width,
        color: kcPrimaryColor,
        height: size.height,
        child: ListView.builder(
            primary: false,
            padding: EdgeInsets.all(8.0.sp),
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemCount: products.length,
            itemBuilder: (context, index) => itemBuilder(context, index)),
      );
    });
  }
}
