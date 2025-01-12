import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_elevate/products/data/models/products.dart';

class ProductItem extends StatelessWidget {
  const ProductItem({
    super.key,
    required this.products,
  });
  final Products products;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 240.h,
      width: 192.w,
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.blueGrey, width: 2),
      ),
      margin: const EdgeInsets.all(10),
      child: Column(
        children: [
          SizedBox(
            height: 120.h,
            child: Stack(
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.vertical(
                    top: Radius.circular(8),
                  ),
                  child: Image.network(
                    products.image,
                    width: double.infinity,
                    height: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: IconButton(
                    style: IconButton.styleFrom(
                      backgroundColor: Colors.white,
                      overlayColor: Colors.blueGrey,
                      visualDensity: VisualDensity.compact,
                      elevation: 4,
                      shadowColor: Colors.black,
                    ),
                    onPressed: () {},
                    icon: const Icon(
                      Icons.favorite_outline,
                      color: Colors.blueGrey,
                    ),
                    padding: EdgeInsets.zero,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(6.0).w,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    products.title,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(fontWeight: FontWeight.w500),
                  ),
                  Text(
                    products.description,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(fontWeight: FontWeight.w500),
                  ),
                  SizedBox(height: 4.h),
                  const Spacer(),
                  Row(
                    children: [
                      Text(
                        'EGP ${products.price}',
                        style: const TextStyle(
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(width: 12.w),
                      Expanded(
                        child: Text(
                          '${products.price + 266} EGP',
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            decoration: TextDecoration.lineThrough,
                            color: Colors.blueGrey,
                            fontSize: 12.sp,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Review (${products.rating.rate})',
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 12.sp,
                        ),
                      ),
                      const Icon(
                        Icons.star,
                        color: Colors.amber,
                        size: 16,
                      ),
                      const Spacer(),
                      IconButton(
                        style: IconButton.styleFrom(
                          backgroundColor: Colors.blue[700],
                          overlayColor: Colors.blue,
                          visualDensity: VisualDensity.compact,
                          elevation: 4,
                          shadowColor: Colors.black,
                        ),
                        onPressed: () {},
                        icon: const Icon(
                          Icons.add,
                          color: Colors.white,
                          size: 32,
                        ),
                        padding: EdgeInsets.zero,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
