import 'package:boxtout/ui/common/ui_helpers.dart';
import 'package:flutter/material.dart';

import 'cart_item.dart';

class CartList extends StatelessWidget {
  const CartList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: vhpaceRegular,
      itemCount: 10,
      itemBuilder: (context, index) {
        return CartItem(
          index: index,
          size: const Size(double.infinity, 120),
        );
      },
    );
  }
}
