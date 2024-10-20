import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:quick_ecommerce/test.dart';

List<String> bannerImageLinks = [
  "https://www.shutterstock.com/image-vector/3d-yellow-great-discount-sale-260nw-2056851839.jpg",
  "https://www.shutterstock.com/image-vector/3d-shopping-sale-promotion-banner-260nw-2056851833.jpg",
  "https://www.shutterstock.com/image-vector/3d-shopping-sale-promotion-banner-260nw-2056851833.jpg",
];

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentSelectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                const SizedBox(width: 10),
                IconButton(onPressed: () {}, icon: Icon(Icons.qr_code_scanner)),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(width: 1.5, color: Colors.orange),
                        borderRadius: BorderRadius.circular(10)),
                    child: Row(
                      children: [
                        Icon(Icons.camera_alt),
                        SizedBox(
                          width: 10,
                        ),
                        Expanded(
                            child: TextField(
                          decoration: InputDecoration(
                              hintText: "Search now", border: InputBorder.none),
                        )),
                        IconButton(onPressed: () {}, icon: Icon(Icons.search))
                      ],
                    ),
                  ),
                ),
                IconButton(
                    onPressed: () {}, icon: Icon(Icons.notifications_outlined)),
                const SizedBox(width: 10),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            CarouselSlider(
                items: [
                  ...bannerImageLinks.map((value) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.network(
                          value,
                          fit: BoxFit.cover,
                          width: double.infinity,
                        ),
                      ),
                    );
                  }),
                ],
                options: CarouselOptions(
                  //  height: 180,
                  enlargeCenterPage: false,
                  aspectRatio: 16 / 9,
                  onPageChanged: (index, reason) {
                    currentSelectedIndex = index;
                    setState(() {});
                  },
                  autoPlay: true,
                  autoPlayInterval: Duration(seconds: 3),
                  viewportFraction: 0.8,
                )),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ...bannerImageLinks.asMap().entries.map((value) {
                  return Container(
                    height: 10,
                    width: 10,
                    margin: const EdgeInsets.symmetric(
                        vertical: 10.0, horizontal: 4.0),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: currentSelectedIndex == value.key
                            ? Colors.orange
                            : Colors.grey),
                  );
                })
              ],
            )
          ],
        ),
      ),
    );
  }
}
