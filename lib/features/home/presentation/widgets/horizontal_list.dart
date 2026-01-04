import 'package:flutter/material.dart';

class HorizontalList extends StatelessWidget {
  final int itemCount;
  final IndexedWidgetBuilder itemBuilder;
  final double height;

  const HorizontalList({
    super.key,
    required this.itemCount,
    required this.itemBuilder,
    this.height = 300,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: ListView.separated(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        scrollDirection: Axis.horizontal,
        itemCount: itemCount,
        separatorBuilder: (context, index) => const SizedBox(width: 15),
        itemBuilder: itemBuilder,
      ),
    );
  }
}
