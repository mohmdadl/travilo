import 'package:flutter/material.dart';
import 'package:travilo/core/widgets/custom_app_bar.dart';
import 'widgets/events_view_body.dart';

class EventsView extends StatelessWidget {
  static const routeName = 'events_view';
  const EventsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xff121212),
      body: SafeArea(
        child: Column(
          children: [
            CustomAppBar(title: "Events"),
            Expanded(child: EventsViewBody()),
          ],
        ),
      ),
    );
  }
}
