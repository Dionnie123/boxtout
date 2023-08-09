import 'package:boxtout/app/models/product_dto.dart';
import 'package:boxtout/ui/common/ui_helpers.dart';
import 'package:boxtout/ui/special/sliver_grid_delegate.dart';
import 'package:flutter/material.dart';

class SuggestedProductListview extends StatelessWidget {
  final Size size;
  final List<ProductDto> products;
  final Widget? Function(BuildContext, int) itemBuilder;
  const SuggestedProductListview(
      {super.key,
      required this.products,
      required this.itemBuilder,
      required this.size});

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      sliver: SliverGrid.builder(
          itemCount: products.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCountAndFixedHeight(
            height: size.height,
            crossAxisCount: isMobile(context)
                ? 2
                : isTablet(context)
                    ? 3
                    : 5,
            crossAxisSpacing: 8.0,
            mainAxisSpacing: 8.0,
          ),
          itemBuilder: (context, index) => itemBuilder(context, index)),
    );
  }
}
