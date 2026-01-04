import 'package:flutter/material.dart';
import 'package:travilo/features/home/presentation/widgets/ai_floating_button.dart';
import 'package:travilo/core/widgets/custom_curved_nav_bar.dart';
import 'package:travilo/features/expolre/presentation/views/explore_view.dart';
import 'package:travilo/features/home/presentation/views/home_view.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travilo/features/drawer/presentation/bloc/drawer_bloc.dart';
import 'package:travilo/features/drawer/presentation/view/custom_drawer_view.dart';

class HomeLayout extends StatefulWidget {
  static const String routeName = 'home_layout';
  const HomeLayout({super.key});
  @override
  State<HomeLayout> createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout> {
  int selected = 0;

  final PageController controller = PageController();

  final List<Widget> screens = [
    const HomeView(), // Index 0
    const ExploreView(), // Index 1
    const Scaffold(body: Center(child: Text("Saved"))), // Index 2
    const Scaffold(body: Center(child: Text("Profile"))), // Index 3
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff101922),
      drawer: BlocProvider(
        create: (context) => DrawerBloc(),
        child: const CustomDrawerView(),
      ),
      body: PageView(
        controller: controller,
        onPageChanged: (index) {
          setState(() => selected = index);
        },
        children: screens,
      ),
      floatingActionButton: const AIFloatingButton(),
      bottomNavigationBar: CustomCurvedNavBar(
        index: selected,
        onTap: (i) {
          setState(() {
            selected = i;
            controller.jumpToPage(i);
          });
        },
        items: const [
          Icon(Icons.home, size: 30, color: Colors.white),
          Icon(CupertinoIcons.compass, size: 30, color: Colors.white),
          Icon(Icons.favorite, size: 30, color: Colors.white),
          Icon(CupertinoIcons.person, size: 30, color: Colors.white),
        ],
      ),
    );
  }
}
