import 'package:flutter/material.dart';

import 'cart_item.dart';

class CartList extends StatelessWidget {
  const CartList({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 160),
      child: ListView.builder(
        padding: const EdgeInsets.all(15),
        itemCount: 10,
        itemBuilder: (context, index) {
          return CartItem(
            index: index,
            size: const Size(double.infinity, 100),
          );
        },
      ),
    );
  }
}
