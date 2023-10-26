import 'package:ecommerce_ui/pages/home_page.dart';
import 'package:ecommerce_ui/pages/cart_page.dart';
import 'package:ecommerce_ui/pages/profile_page.dart';
import 'package:ecommerce_ui/widgets/button_navigation.dart';
import 'package:flutter/material.dart';

class HomePageMain extends StatefulWidget {
  const HomePageMain({super.key});

  @override
  State<HomePageMain> createState() => _HomePageMainState();
}

class _HomePageMainState extends State<HomePageMain> {
  int currentIndex = 0;

  final List<Widget> pages = [
    const HomePage(),
    const ProfilePage(),
    const CartPage(),
  ];

  void onTabTapped(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          "SHOPPERS",
          style: TextStyle(
              fontSize: 28,
              fontFamily: "Inter",
              fontWeight: FontWeight.w600,
              color: Colors.black),
        ),
        backgroundColor: Colors.white,
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: pages[currentIndex],
      ),
      bottomNavigationBar: BottonNavigationBarWidget(
          currentIndex: currentIndex, onTabTapped: onTabTapped),
    );
  }
}
