import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class BannerScreen extends StatefulWidget {
  @override
  State<BannerScreen> createState() => _BannerScreenState();
}

class _BannerScreenState extends State<BannerScreen> {
  final List<String> bannerImages = [
    'https://img.freepik.com/premium-photo/ecommerce-banner-design_1281315-2821.jpg',
    'https://via.placeholder.com/400x150?text=Banner+2',
    'https://via.placeholder.com/400x150?text=Banner+3',
    'https://via.placeholder.com/400x150?text=Banner+4',
    'https://via.placeholder.com/400x150?text=Banner+5',
  ];

  int _currentIndex = 0;
  // To track the active carousel item
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 10),

        // Carousel Slider for Banner Section
        CarouselSlider(
          options: CarouselOptions(
            height: 180, // Height of the carousel
            autoPlay: false, // Enable automatic scrolling
            enlargeCenterPage: false,
            aspectRatio: 16 / 9,
            viewportFraction: 0.8,
            onPageChanged: (index, reason) {
              setState(() {
                _currentIndex = index; // Update current index on page change
              });
            },
          ),
          items: bannerImages.map((imageUrl) {
            return Builder(
              builder: (BuildContext context) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.network(
                      imageUrl,
                      fit: BoxFit.cover,
                      width: double.infinity,
                    ),
                  ),
                );
              },
            );
          }).toList(),
        ),

        // Dots Indicator
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: bannerImages.asMap().entries.map((entry) {
            return Container(
              width: 12.0,
              height: 12.0,
              margin:
                  const EdgeInsets.symmetric(vertical: 10.0, horizontal: 4.0),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: _currentIndex == entry.key
                    ? Colors.blue // Active dot color
                    : Colors.grey, // Inactive dot color
              ),
            );
          }).toList(),
        ),
        // Add any additional widgets below the carousel if needed
      ],
    );
  }
}

class CustomSearchBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Row(
        children: [
          // Camera Icon (Left)
          IconButton(
            icon: const Icon(Icons.qr_code_scanner, color: Colors.orange),
            onPressed: () {
              // Handle camera icon press
            },
          ),

          // Search Input Box
          Expanded(
            child: Container(
              // height: 40, // Set the height to match the design
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                    color: Colors.orange, width: 1.5), // Border styling
              ),
              child: Row(
                children: [
                  const SizedBox(width: 10),
                  const Icon(Icons.camera_alt, color: Colors.grey),
                  const SizedBox(width: 8),
                  const Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "mistry box daraz today", // Placeholder text
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  const SizedBox(width: 8),

                  // Search Button (Right)
                  Padding(
                    padding: const EdgeInsets.only(right: 4),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.orange, // Button background color
                        borderRadius: BorderRadius.circular(14),
                      ),
                      padding: EdgeInsets.all(6),
                      child: Text(
                        "Search",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w300,
                            fontSize: 14),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

          const SizedBox(width: 8),

          // Notification Icon
          IconButton(
            icon: const Icon(Icons.notifications_outlined, color: Colors.grey),
            onPressed: () {
              // Handle notification icon press
            },
          ),
        ],
      ),
    );
  }
}
