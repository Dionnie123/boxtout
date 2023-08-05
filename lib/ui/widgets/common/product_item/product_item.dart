import 'package:boxtout/app/extensions/color_extension.dart';
import 'package:boxtout/app/models/product_dto.dart';
import 'package:boxtout/ui/common/app_colors.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProductItem extends StatelessWidget {
  final Function() onAdd;
  final ProductDto product;
  final Size size;
  const ProductItem(
    this.product, {
    super.key,
    required this.size,
    required this.onAdd,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        SizedBox(
          width: size.width,
          height: size.height,
          child: Card(
            clipBehavior: Clip.antiAlias,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  clipBehavior: Clip.antiAlias,
                  children: [
                    CachedNetworkImage(
                      imageUrl:
                          'https://picsum.photos/200/300?random=${product.id}',
                      placeholder: (context, url) =>
                          const CircularProgressIndicator(),
                      errorWidget: (context, url, error) =>
                          const Icon(Icons.error),
                      height: 100,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                    Positioned(
                      right: 0,
                      top: 0,
                      child: Container(
                          color: Colors.red,
                          child: const Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 8.0, vertical: 4.0),
                              child: Text(
                                "NEW!",
                                style: TextStyle(color: Colors.white),
                              ))),
                    )
                  ],
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
                          style: const TextStyle(fontSize: 16).copyWith(
                            fontWeight: FontWeight.w900,
                            fontFamily: GoogleFonts.nunito().fontFamily,
                          ),
                        ),
                        Opacity(
                          opacity: 0.6,
                          child: Text(product.description.toString(),
                              maxLines: 2,
                              style: const TextStyle(fontSize: 14)),
                        ),
                        Text(
                          "\$${product.price}",
                          style: TextStyle(
                                  fontSize: 16,
                                  color: kcPrimaryColor.darken(0.2))
                              .copyWith(
                            fontWeight: FontWeight.w900,
                            fontFamily: GoogleFonts.nunito().fontFamily,
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
        Positioned(
          right: 20,
          bottom: 10,
          child: InkWell(
            onTap: () => onAdd(),
            child: const Card(
                elevation: 5,
                color: kcPrimaryColor,
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Icon(Icons.add),
                )),
          ),
        ),
      ],
    );
  }
}
