import 'package:boxtout/app/models/product_dto.dart';
import 'package:flutter/material.dart';

import 'cart_item.dart';

class CartList extends StatelessWidget {
  final List<ProductDto> cart;
  const CartList({super.key, required this.cart});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 160),
      child: ListView.builder(
        padding: const EdgeInsets.all(15),
        itemCount: cart.length,
        itemBuilder: (context, index) {
          return CartItem(
            product: cart[index],
            size: const Size(double.infinity, 100),
          );
        },
      ),
    );
  }
}
