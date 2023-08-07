import 'package:boxtout/app/extensions/color_extension.dart';
import 'package:boxtout/app/models/product_dto.dart';
import 'package:boxtout/ui/common/app_colors.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import 'cart_item.button.dart';

class CartItem extends StatelessWidget {
  final ProductDto product;
  final Function() onAdd;
  final Function() onMinus;
  final Size size;

  const CartItem(
    this.product, {
    super.key,
    required this.onAdd,
    required this.onMinus,
    required this.size,
  });

  @override
  Widget build(
    BuildContext context,
  ) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: SizedBox(
        width: size.width,
        height: size.height,
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Card(
                clipBehavior: Clip.antiAlias,
                elevation: 2,
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(8.0.sp),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: CachedNetworkImage(
                          imageUrl:
                              'https://picsum.photos/200/300?random=${product.id}',
                          placeholder: (context, url) =>
                              const CircularProgressIndicator(),
                          errorWidget: (context, url, error) =>
                              const Icon(Icons.error),
                          width: 80.sp,
                          height: double.infinity,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              product.name.toString(),
                              maxLines: 2,
                              style: TextStyle(fontSize: 14.sp).copyWith(
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                            Opacity(
                              opacity: 0.6,
                              child: Text(product.description.toString(),
                                  maxLines: 1,
                                  style: TextStyle(fontSize: 12.sp)),
                            ),
                            Text(
                              "\$${product.price} x ${product.quantityInCart}",
                              maxLines: 1,
                              style: TextStyle(fontSize: 14.sp).copyWith(
                                fontWeight: FontWeight.w900,
                                fontFamily: GoogleFonts.nunito().fontFamily,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    /*   */
                  ],
                )),
            Positioned(
              bottom: 0,
              right: 0,
              child: Row(
                children: [
                  CartItemButton(
                      icon: Icons.remove_rounded, onUpdate: () => onMinus()),
                  Card(
                    color: kcPrimaryColor.darken(),
                    child: SizedBox(
                      width: 40.r,
                      height: 40.r,
                      child: Center(
                        child: Text(
                          "${product.quantityInCart}",
                          maxLines: 1,
                          overflow: TextOverflow.fade,
                          style: TextStyle(fontSize: 14.sp),
                        ),
                      ),
                    ),
                  ),
                  CartItemButton(
                      icon: Icons.add_rounded, onUpdate: () => onAdd()),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
