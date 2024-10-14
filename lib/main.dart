import 'package:flutter/material.dart';
import 'package:quick_ecommerce/test.dart';
import 'package:quick_ecommerce/view/screens/dashboard/dashboard_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false, home: DashboardScreen());
  }
}

// model, view, controller // MVC Architecture