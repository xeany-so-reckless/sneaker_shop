import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class MyBottomNavBar extends StatefulWidget {
  void Function(int)? onTabChange;
   MyBottomNavBar({super.key, required this.onTabChange});

  @override
  State<MyBottomNavBar> createState() => _MyBottomNavBarState();
}

class _MyBottomNavBarState extends State<MyBottomNavBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 20),
      child: GNav(
        color: Colors.grey[400],
        activeColor: Colors.black,
        tabActiveBorder: Border.all(color: Colors.white),
        tabBackgroundColor: Colors.grey.shade200,
        mainAxisAlignment: MainAxisAlignment.center,
        tabBorderRadius: 16,
        onTabChange: (value) => widget.onTabChange!(value),
        tabs: const [
        GButton(
          icon: Icons.home,
        text: 'Shop',
        ),
        GButton(icon: Icons.shopping_bag_rounded,
        text: 'Cart',)
      ]),
    );
  }
}