import 'package:flutter/material.dart';

class ProductItem extends StatelessWidget {
  const ProductItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 240,
      width: 192,
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
            height: 120,
            child: Stack(
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.vertical(
                    top: Radius.circular(8),
                  ),
                  child: Image.asset(
                    'assets/zoz.jpg',
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
              padding: const EdgeInsets.all(6.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'title',
                    style: TextStyle(fontWeight: FontWeight.w500),
                  ),
                  const Text(
                    'description',
                    style: TextStyle(fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(height: 4),
                  const Row(
                    children: [
                      Text(
                        'EGP 1000',
                        style: TextStyle(fontWeight: FontWeight.w500),
                      ),
                      SizedBox(width: 16),
                      Text(
                        '1500 EGP',
                        style: TextStyle(
                          decoration: TextDecoration.lineThrough,
                          color: Colors.blueGrey,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Review (4.5)',
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 12,
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
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
