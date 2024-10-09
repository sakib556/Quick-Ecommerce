import 'package:flutter/material.dart';
import 'package:quick_ecommerce/view/screens/dashboard/account_screen.dart';
import 'package:quick_ecommerce/view/screens/dashboard/cart_screen.dart';
import 'package:quick_ecommerce/view/screens/dashboard/home_screen.dart';
import 'package:quick_ecommerce/view/screens/dashboard/messages_screen.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  int selectedIndex = 0; // 0,1,2,3......
  onBottomIconTap(int index) {
    selectedIndex = index;
    setState(() {});
  }

  List<Widget> widgets = [
    HomeScreen(), //0
    MessagesScreen(), //1
    CartScreen(), //2
    AccountScreen() //3
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) {
          onBottomIconTap(value);
        },
        currentIndex: selectedIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message),
            label: 'Messages',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.shopping_cart,
            ),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Account',
          ),
        ],
        //           currentIndex: _selectedIndex,
        selectedItemColor: Colors.orange,
        unselectedItemColor: Colors.grey,
      ),
      body: widgets.elementAt(selectedIndex),
    );
  }
}
