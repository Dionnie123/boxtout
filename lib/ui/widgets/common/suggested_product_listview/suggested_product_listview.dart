import 'package:boxtout/app/models/product_dto.dart';
import 'package:boxtout/ui/special/sliver_grid_delegate.dart';
import 'package:flutter/material.dart';

class SuggestedProductListview extends StatelessWidget {
  final List<ProductDto> products;
  final Widget? Function(BuildContext, int) itemBuilder;
  const SuggestedProductListview(
      {super.key, required this.products, required this.itemBuilder});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, size) {
      const double itemHeight = 250;
      return Column(
        children: [
          GridView.builder(
              primary: false,
              padding: const EdgeInsets.fromLTRB(15.0, 0, 15.0, 15.0),
              itemCount: products.length,
              shrinkWrap: true,
              gridDelegate:
                  SliverGridDelegateWithFixedCrossAxisCountAndFixedHeight(
                height: itemHeight,
                crossAxisCount: size.maxWidth > 800
                    ? 6
                    : size.maxWidth > 500
                        ? 3
                        : 2,
                crossAxisSpacing: 10.0,
                mainAxisSpacing: 10.0,
              ),
              itemBuilder: (context, index) => itemBuilder(context, index)),
        ],
      );
    });
  }
}
