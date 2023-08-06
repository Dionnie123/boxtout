import 'package:boxtout/app/models/product_dto.dart';
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
    return GridView.builder(
        primary: false,
        padding: const EdgeInsets.fromLTRB(15.0, 0, 15.0, 15.0),
        itemCount: products.length,
        shrinkWrap: true,
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCountAndFixedHeight(
          height: 250.0,
          crossAxisCount: 3,
          crossAxisSpacing: 10.0,
          mainAxisSpacing: 10.0,
        ),
        itemBuilder: (context, index) => itemBuilder(context, index));
  }
}
