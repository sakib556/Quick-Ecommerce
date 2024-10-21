import 'package:flutter/material.dart';
import 'package:quick_ecommerce/view/screens/bottom_nav_bar/home/components/home_app_bar.dart';
import 'package:quick_ecommerce/view/screens/bottom_nav_bar/home/components/home_banner_section.dart';

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
            HomeAppBar(),
            SizedBox(
              height: 10,
            ),
            HomeBannerSection(),
          ],
        ),
      ),
    );
  }
}
