// import 'package:flutter/material.dart';
// import 'package:quick_ecommerce/view/test/category.dart';
// import 'package:quick_ecommerce/view/test/flash_sale_product.dart';

// List<CategoryModel> categories = [
//   CategoryModel(
//       id: 1,
//       name: "Tech",
//       imageLink:
//           "https://images.unsplash.com/photo-1523275335684-37898b6baf30"),
//   CategoryModel(
//       id: 2,
//       name: "Beauty",
//       imageLink:
//           "https://images.unsplash.com/photo-1534982841079-afde227ada8f"),
//   CategoryModel(
//       id: 3,
//       name: "Fashion",
//       imageLink:
//           "https://images.unsplash.com/photo-1494790108377-be9c29b29330"),
//   CategoryModel(
//       id: 4,
//       name: "Shoes",
//       imageLink:
//           "https://images.unsplash.com/photo-1526170375885-4d8ecf77b99f"),
// ];

// List<FlashSaleProductModel> flashSales = [
//   FlashSaleProductModel(
//       id: 1,
//       imageLink: "https://images.unsplash.com/photo-1541099649105-f69ad21f3246",
//       discount: "76% Off",
//       newPrice: "৳284",
//       oldPrice: "৳1200",
//       name: 'P1'),
//   FlashSaleProductModel(
//       id: 2,
//       imageLink: "https://images.unsplash.com/photo-1541099649105-f69ad21f3246",
//       discount: "50% Off",
//       newPrice: "৳500",
//       oldPrice: "৳1000",
//       name: 'P2'),
//   FlashSaleProductModel(
//       id: 2,
//       imageLink: "https://images.unsplash.com/photo-1541099649105-f69ad21f3246",
//       discount: "50% Off",
//       newPrice: "৳500",
//       oldPrice: "৳1000",
//       name: 'P2'),
//   FlashSaleProductModel(
//       id: 2,
//       imageLink: "https://images.unsplash.com/photo-1541099649105-f69ad21f3246",
//       discount: "50% Off",
//       newPrice: "৳500",
//       oldPrice: "৳1000",
//       name: 'P2'),
//   FlashSaleProductModel(
//       id: 2,
//       imageLink: "https://images.unsplash.com/photo-1541099649105-f69ad21f3246",
//       discount: "50% Off",
//       newPrice: "৳500",
//       oldPrice: "৳1000",
//       name: 'P2'),
//   FlashSaleProductModel(
//       id: 2,
//       imageLink: "https://images.unsplash.com/photo-1541099649105-f69ad21f3246",
//       discount: "50% Off",
//       newPrice: "৳500",
//       oldPrice: "৳1000",
//       name: 'P2'),
// ];

// class TestSection extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Expanded(
//       child: SingleChildScrollView(
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             DealsSection(),
//             FlashSaleSection(flashSales: flashSales),
//             CategoriesSection(categories: categories),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class FlashSaleSection extends StatelessWidget {
//   final List<FlashSaleProductModel> flashSales;

//   FlashSaleSection({required this.flashSales});

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         Padding(
//           padding: const EdgeInsets.symmetric(horizontal: 16.0),
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               _buildSectionTitle("Flash Sale"),
//               TextButton(
//                 onPressed: () {},
//                 child: const Text("Shop More",
//                     style: TextStyle(color: Colors.red)),
//               ),
//             ],
//           ),
//         ),
//         Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: SingleChildScrollView(
//             scrollDirection: Axis.horizontal,
//             child: Row(
//               children: flashSales.map((product) {
//                 return FlashSaleItem(
//                   imageUrl: product.imageLink,
//                   discount: product.discount,
//                   newPrice: product.newPrice,
//                   oldPrice: product.oldPrice,
//                 );
//               }).toList(),
//             ),
//           ),
//         ),
//       ],
//     );
//   }
// }

// class CategoriesSection extends StatelessWidget {
//   final List<CategoryModel> categories;

//   CategoriesSection({required this.categories});

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         Padding(
//           padding: const EdgeInsets.symmetric(horizontal: 16.0),
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               _buildSectionTitle("Categories"),
//               TextButton(
//                 onPressed: () {},
//                 child: const Text("Shop More",
//                     style: TextStyle(color: Colors.red)),
//               ),
//             ],
//           ),
//         ),
//         Padding(
//           padding: EdgeInsets.all(16.0),
//           child: GridView.builder(
//             shrinkWrap: true,
//             physics: const NeverScrollableScrollPhysics(),
//             gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//               crossAxisCount: 3,
//               childAspectRatio: 1,
//               crossAxisSpacing: 10,
//               mainAxisSpacing: 10,
//             ),
//             itemCount: categories.length,
//             itemBuilder: (context, index) {
//               return CategoryItem(
//                 imageUrl: categories[index].imageLink,
//                 title: categories[index].name,
//               );
//             },
//           ),
//         ),
//       ],
//     );
//   }
// }

// Widget _buildSectionTitle(String title) {
//   return Text(
//     title,
//     style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//   );
// }

// // Deals Section Widget
// class DealsSection extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.all(16.0),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           _buildSectionTitle("New Deals Everyday!"),
//           const SizedBox(height: 10),
//           Container(
//             padding: const EdgeInsets.all(16),
//             decoration: BoxDecoration(
//               color: Colors.pinkAccent.withOpacity(0.2),
//               borderRadius: BorderRadius.circular(12),
//             ),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Text(
//                       "7% OFF",
//                       style: TextStyle(
//                           color: Colors.red,
//                           fontWeight: FontWeight.bold,
//                           fontSize: 16),
//                     ),
//                     const Text("Min. spend ৳ 399"),
//                   ],
//                 ),
//                 ElevatedButton(
//                   onPressed: () {},
//                   child: const Text("Collect all"),
//                   style: ElevatedButton.styleFrom(
//                     backgroundColor: Colors.orange,
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// // Flash Sale Item Widget
// class FlashSaleItem extends StatelessWidget {
//   final String imageUrl;
//   final String discount;
//   final String newPrice;
//   final String oldPrice;

//   const FlashSaleItem({
//     required this.imageUrl,
//     required this.discount,
//     required this.newPrice,
//     required this.oldPrice,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.all(8.0),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           ClipRRect(
//             borderRadius: BorderRadius.circular(10),
//             child: Image.network(
//               imageUrl,
//               height: 100,
//               width: 100,
//               fit: BoxFit.cover,
//             ),
//           ),
//           const SizedBox(height: 5),
//           Text(
//             discount,
//             style:
//                 const TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
//           ),
//           Text(
//             newPrice,
//             style: const TextStyle(fontWeight: FontWeight.bold),
//           ),
//           Text(
//             oldPrice,
//             style: const TextStyle(
//               decoration: TextDecoration.lineThrough,
//               color: Colors.grey,
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// // Category Item Widget
// class CategoryItem extends StatelessWidget {
//   final String imageUrl;
//   final String title;

//   const CategoryItem({
//     required this.imageUrl,
//     required this.title,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         ClipRRect(
//           borderRadius: BorderRadius.circular(10),
//           child: Image.network(
//             imageUrl,
//             height: 80,
//             width: 80,
//             fit: BoxFit.cover,
//           ),
//         ),
//         const SizedBox(height: 5),
//         Text(title),
//       ],
//     );
//   }
// }
