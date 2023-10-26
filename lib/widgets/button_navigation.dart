import 'package:flutter/material.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

class BottonNavigationBarWidget extends StatefulWidget {
  final int currentIndex;
  final Function(int) onTabTapped;
  const BottonNavigationBarWidget(
      {super.key, required this.currentIndex, required this.onTabTapped});

  @override
  State<BottonNavigationBarWidget> createState() =>
      _BottonNavigationBarWidgetState();
}

class _BottonNavigationBarWidgetState extends State<BottonNavigationBarWidget> {
  @override
  Widget build(BuildContext context) {
    return SalomonBottomBar(
      items: [
        SalomonBottomBarItem(
          icon: const Icon(Icons.home),
          title: const Text("Home"),
          selectedColor: Colors.black,
        ),
        SalomonBottomBarItem(
          icon: const Icon(Icons.person),
          title: const Text("Profile"),
          selectedColor: Colors.black,
        ),
        SalomonBottomBarItem(
          icon: const Icon(Icons.shopping_cart),
          title: const Text("Cart"),
          selectedColor: Colors.black,
        ),
      ],
      currentIndex: widget.currentIndex,
      onTap: (int index) {
        widget.onTabTapped(index);
      },
    );
  }
}
