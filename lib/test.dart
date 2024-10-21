import 'package:flutter/material.dart';

class ECommerceHomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Section 1: Deals and Vouchers
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "New Deals Everyday!",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              Container(
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.pinkAccent.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "7% OFF",
                          style: TextStyle(
                              color: Colors.red,
                              fontWeight: FontWeight.bold,
                              fontSize: 16),
                        ),
                        Text("Min. spend ৳ 399"),
                      ],
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: Text("Collect all"),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),

        // Section 2: Flash Sale
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Flash Sale",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              TextButton(
                onPressed: () {},
                child: Text("Shop More", style: TextStyle(color: Colors.red)),
              ),
            ],
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              _buildFlashSaleItem("https://dummyimage.com/200x200/000/fff",
                  "76% Off", "৳284", "৳1,200"),
              _buildFlashSaleItem("https://dummyimage.com/200x200/000/ccc",
                  "80% Off", "৳132", "৳662"),
              _buildFlashSaleItem("https://dummyimage.com/200x200/000/ddd",
                  "80% Off", "৳132", "৳645"),
            ],
          ),
        ),

        // Section 3: Categories
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Categories",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              TextButton(
                onPressed: () {},
                child: Text("Shop More", style: TextStyle(color: Colors.red)),
              ),
            ],
          ),
        ),
        GridView.count(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          crossAxisCount: 3,
          childAspectRatio: 1,
          padding: const EdgeInsets.symmetric(horizontal: 16),
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          children: [
            _buildCategoryItem(
                "https://dummyimage.com/200x200/000/fff", "Tech"),
            _buildCategoryItem(
                "https://dummyimage.com/200x200/000/ccc", "Beauty"),
            _buildCategoryItem(
                "https://dummyimage.com/200x200/000/ddd", "Fashion"),
            _buildCategoryItem(
                "https://dummyimage.com/200x200/000/eee", "Watches"),
            _buildCategoryItem(
                "https://dummyimage.com/200x200/000/fff", "Accessories"),
            _buildCategoryItem(
                "https://dummyimage.com/200x200/000/aaa", "Shoes"),
          ],
        ),
      ],
    );
  }

  // Helper Widget: Flash Sale Item
  Widget _buildFlashSaleItem(
      String imageUrl, String discount, String newPrice, String oldPrice) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.network(
              imageUrl,
              height: 100,
              width: 100,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(height: 5),
          Text(
            discount,
            style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
          ),
          Text(
            newPrice,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Text(
            oldPrice,
            style: TextStyle(
              decoration: TextDecoration.lineThrough,
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }

  // Helper Widget: Category Item
  Widget _buildCategoryItem(String imageUrl, String title) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.network(
            imageUrl,
            height: 80,
            width: 80,
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(height: 5),
        Text(title),
      ],
    );
  }
}
