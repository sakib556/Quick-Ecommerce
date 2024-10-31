import 'package:flutter/material.dart';
import 'package:quick_ecommerce/view/screens/bottom_nav_bar/home/components/flash_sale_product_card.dart';
import 'package:quick_ecommerce/view/screens/bottom_nav_bar/home/components/home_title.dart';

class FlashSaleSection extends StatelessWidget {
  const FlashSaleSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10),
      child: Container(
        color: Colors.white,
        padding: const EdgeInsets.all(6),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const HomeTitle(title: "Flash Sale"),
                TextButton(onPressed: () {}, child: const Text("Shop more"))
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                FlashSaleProductCard(
                  imageLink:
                      "https://img.pikbest.com/wp/202405/black-friday-shopping-3d-render-of-cart-and-gift-box-on-a-background-with-confetti-for-sale-design_9798912.jpg!w700wp",
                  mainPrice: "500",
                  oldPrice: "800",
                  discountPercent: "50",
                ),
                FlashSaleProductCard(
                  imageLink:
                      "https://www.pickfu.com/blog/wp-content/uploads/2019/09/e-commerce-product-images.jpg",
                  mainPrice: "600",
                  oldPrice: "1200",
                  discountPercent: "30",
                ),
                FlashSaleProductCard(
                  imageLink:
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTk2p8liU-vvdqfg2PRww5lUExQAqHpJBHtWw&s",
                  mainPrice: "300",
                  oldPrice: "500",
                  discountPercent: "20",
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
