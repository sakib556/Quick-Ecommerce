// import 'package:flutter/material.dart';

// class MyApp extends StatefulWidget {
//   @override
//   _MyAppState createState() => _MyAppState();
// }

// class _MyAppState extends State<MyApp> {
//   int _selectedIndex = 0;

//   static final List<Widget> _widgetOptions = <Widget>[
//     ForYouScreen(),
//     MessagesScreen(),
//     CartScreen(),
//     AccountScreen(),
//   ];

//   void _onItemTapped(int index) {
//     setState(() {
//       _selectedIndex = index;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text('Daraz Clone'),
//         ),
//         body: _widgetOptions.elementAt(_selectedIndex),
//         bottomNavigationBar: BottomNavigationBar(
//           type: BottomNavigationBarType.fixed,
//           items: const <BottomNavigationBarItem>[
//             BottomNavigationBarItem(
//               icon: Icon(Icons.home),
//               label: 'For You',
//             ),
//             BottomNavigationBarItem(
//               icon: Icon(Icons.message),
//               label: 'Messages',
//             ),
//             BottomNavigationBarItem(
//               icon: Icon(Icons.shopping_cart),
//               label: 'Cart',
//             ),
//             BottomNavigationBarItem(
//               icon: Icon(Icons.person),
//               label: 'Account',
//             ),
//           ],
//           currentIndex: _selectedIndex,
//           selectedItemColor: Colors.orange,
//           unselectedItemColor: Colors.grey,
//           onTap: (index) {
//             _onItemTapped(index);
//           },
//         ),
//       ),
//     );
//   }
// }

// class ForYouScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Center(child: Text('For You Screen'));
//   }
// }

// class MessagesScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Center(child: Text('Messages Screen'));
//   }
// }

// class CartScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Center(child: Text('Cart Screen'));
//   }
// }

// class AccountScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Center(child: Text('Account Screen'));
//   }
// }
