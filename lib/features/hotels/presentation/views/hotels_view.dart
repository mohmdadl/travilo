import 'package:flutter/material.dart';
import 'package:travilo/core/widgets/custom_app_bar.dart';
import 'widgets/hotels_view_body.dart';

class HotelsView extends StatelessWidget {
  static const routeName = 'hotels_view';
  const HotelsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xff121212),
      body: SafeArea(
        child: Column(
          children: [
            CustomAppBar(title: "Hotels"),
            Expanded(child: HotelsViewBody()),
          ],
        ),
      ),
    );
  }
}
