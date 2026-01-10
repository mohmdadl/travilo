import 'package:flutter/material.dart';
import 'package:travilo/core/widgets/custom_app_bar.dart';
import 'package:travilo/features/monuments/presentation/views/widgets/monuments_view_body.dart';

class MonumentsView extends StatelessWidget {
  static const routeName = 'monuments_view';
  const MonumentsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff121212),
      body: SafeArea(
        child: Column(
          children: [
            CustomAppBar(
              title: "Monuments & tours",
              actions: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.search, color: Colors.white),
                ),
              ],
            ),
            const Expanded(child: MonumentsViewBody()),
          ],
        ),
      ),
    );
  }
}
