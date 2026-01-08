import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class CustomCurvedNavBar extends StatelessWidget {
  final int index;
  final Function(int) onTap;
  final List<Widget> items;
  final Color backgroundColor;
  final Color color;
  final Color buttonBackgroundColor;
  final double height;
  final Duration animationDuration;

  const CustomCurvedNavBar({
    super.key,
    required this.index,
    required this.onTap,
    required this.items,
    this.backgroundColor = Colors.transparent,
    this.color = const Color(0xFF0F0F0F),
    this.buttonBackgroundColor = Colors.blue,
    this.height = 75.0,
    this.animationDuration = const Duration(milliseconds: 300),
  });

  @override
  Widget build(BuildContext context) {
    return CurvedNavigationBar(
      index: index,
      height: height,
      items: items,
      color: color,
      buttonBackgroundColor: buttonBackgroundColor,
      backgroundColor: backgroundColor,
      animationCurve: Curves.easeInOut,
      animationDuration: animationDuration,
      onTap: onTap,
      letIndexChange: (index) => true,
    );
  }
}
