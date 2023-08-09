import 'package:boxtout/app/models/product_dto.dart';
import 'package:boxtout/ui/common/colors.dart';
import 'package:flutter/material.dart';

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
      return SliverToBoxAdapter(
        child: Container(
          width: size.width,
          color: kcPrimaryColorDark,
          height: size.height,
          child: ListView.builder(
              primary: false,
              padding: const EdgeInsets.all(16.0),
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: products.length,
              itemBuilder: (context, index) => itemBuilder(context, index)),
        ),
      );
    });
  }
}
