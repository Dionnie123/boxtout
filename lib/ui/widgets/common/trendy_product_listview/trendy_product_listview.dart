import 'package:boxtout/app/models/product_dto.dart';
import 'package:flutter/material.dart';

class TrendyProductListview extends StatelessWidget {
  final List<ProductDto> products;
  final Widget? Function(BuildContext, int) itemBuilder;
  const TrendyProductListview(
      {super.key, required this.products, required this.itemBuilder});

  @override
  Widget build(
    BuildContext context,
  ) {
    return Builder(builder: (context) {
      const double listHeight = 270.0;

      return SizedBox(
        height: listHeight,
        child: ListView.builder(
            primary: false,
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemCount: products.length,
            itemBuilder: (context, index) => itemBuilder(context, index)),
      );
    });
  }
}
