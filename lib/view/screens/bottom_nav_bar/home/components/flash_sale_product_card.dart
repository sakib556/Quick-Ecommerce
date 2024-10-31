import 'package:flutter/material.dart';

class FlashSaleProductCard extends StatelessWidget {
  const FlashSaleProductCard(
      {super.key,
      required this.imageLink,
      required this.mainPrice,
      required this.oldPrice,
      required this.discountPercent});
  final String imageLink;
  final String mainPrice;
  final String oldPrice;
  final String discountPercent;
  @override
  Widget build(BuildContext context) {
    return Container(
      //  padding: EdgeInsets.all(6),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.network(
                    width: 105, height: 105, fit: BoxFit.cover, imageLink),
              ),
              Container(
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10)),
                    color: Colors.red),
                padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                child: Text(
                  "$discountPercent% off",
                  style: TextStyle(color: Colors.white, fontSize: 10),
                ),
              )
            ],
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            "$mainPrice tk",
            style: const TextStyle(
              color: Colors.amber,
            ),
          ),
          Text(
            "$oldPrice tk",
            style: const TextStyle(
                decoration: TextDecoration.lineThrough, color: Colors.grey),
          ),
        ],
      ),
    );
  }
}
