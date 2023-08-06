import 'package:boxtout/app/extensions/color_extension.dart';
import 'package:boxtout/app/models/product_dto.dart';
import 'package:boxtout/ui/common/app_colors.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
    return Center(
      child: SizedBox(
        width: size.width,
        height: size.height,
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Card(
              clipBehavior: Clip.antiAlias,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Stack(
                    clipBehavior: Clip.antiAlias,
                    children: [
                      CachedNetworkImage(
                        imageUrl:
                            'https://images.unsplash.com/photo-1541167760496-1628856ab772?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1637&q=80',
                        placeholder: (context, url) =>
                            const CircularProgressIndicator(),
                        errorWidget: (context, url, error) =>
                            const Icon(Icons.error),
                        height: 120.h,
                        width: double.infinity,
                        fit: BoxFit.cover,
                      ),
                      Positioned(
                        right: 0,
                        top: 0,
                        child: Container(
                            color: Colors.red,
                            child: Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 8.0.sp, vertical: 4.0.sp),
                                child: Text(
                                  "NEW!",
                                  style: TextStyle(
                                      fontSize: 14.sp, color: Colors.white),
                                ))),
                      )
                    ],
                  ),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.all(8.0.sp),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            product.name.toString(),
                            maxLines: 2,
                            style: TextStyle(fontSize: 16.sp).copyWith(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 4.0.h,
                              ),
                              Opacity(
                                opacity: 0.6,
                                child: Text(product.description.toString(),
                                    maxLines: 2,
                                    style: TextStyle(fontSize: 12.sp)),
                              ),
                              SizedBox(
                                height: 4.0.h,
                              ),
                              Text(
                                "\$${product.price}",
                                style: TextStyle(
                                        fontSize: 16.sp,
                                        color: kcPrimaryColor.darken(0.2))
                                    .copyWith(
                                  fontWeight: FontWeight.w900,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            Positioned(
              /*  right: 8.0.w,
              bottom: -12.0.w, */
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
        ),
      ),
    );
  }
}
