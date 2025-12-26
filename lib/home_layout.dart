import 'package:flutter/material.dart';
import 'package:travilo/features/expolre/presentation/views/explore_view.dart';
import 'package:travilo/features/home/presentation/views/home_view.dart';

import 'package:flutter/cupertino.dart';

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

      body: PageView(
        controller: controller,
        onPageChanged: (index) {
          setState(() => selected = index);
        },
        children: screens,
      ),

      bottomNavigationBar: CustomBottomBar(
        selected: selected,
        onSelect: (i) {
          setState(() {
            selected = i;
            controller.jumpToPage(i);
          });
        },
      ),
    );
  }
}

class CustomBottomBar extends StatelessWidget {
  final int selected;
  final Function(int) onSelect;

  const CustomBottomBar({
    super.key,
    required this.selected,
    required this.onSelect,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 90,
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              height: 70,
              decoration: const BoxDecoration(
                color: Color(0xFF0F0F0F),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(28),
                  topRight: Radius.circular(28),
                ),
              ),
            ),
          ),

          Positioned(
            bottom: 10,
            left: 0,
            right: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _item(
                  index: 0,
                  selected: selected,
                  onTap: () => onSelect(0),
                  icon: Icons.home_outlined,
                  filledIcon: Icons.home,
                  label: "Home",
                ),
                _item(
                  index: 1,
                  selected: selected,
                  onTap: () => onSelect(1),
                  icon: CupertinoIcons.compass,
                  filledIcon: CupertinoIcons.compass_fill,
                  label: "Explore",
                ),
                _item(
                  index: 2,
                  selected: selected,
                  onTap: () => onSelect(2),
                  icon: Icons.favorite_border,
                  filledIcon: Icons.favorite,
                  label: "Saved",
                ),
                _item(
                  index: 3,
                  selected: selected,
                  onTap: () => onSelect(3),
                  icon: CupertinoIcons.person,
                  filledIcon: CupertinoIcons.person_fill,
                  label: "Profile",
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _item({
    required int index,
    required int selected,
    required VoidCallback onTap,
    required IconData icon,
    required IconData filledIcon,
    required String label,
  }) {
    bool isSelected = index == selected;

    return GestureDetector(
      onTap: onTap,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          AnimatedContainer(
            duration: const Duration(milliseconds: 250),
            padding: EdgeInsets.all(isSelected ? 12 : 8),
            decoration: BoxDecoration(
              color: isSelected ? Colors.blue : Colors.transparent,
              shape: BoxShape.circle,
              boxShadow: isSelected
                  ? [
                      BoxShadow(
                        color: Colors.blue.withOpacity(0.4),
                        blurRadius: 10,
                        spreadRadius: 2,
                        offset: const Offset(0, 4),
                      ),
                    ]
                  : null,
            ),
            child: Icon(
              isSelected ? filledIcon : icon,
              color: isSelected ? Colors.white : Colors.white70,
              size: isSelected ? 30 : 24,
            ),
          ),

          const SizedBox(height: 4),

          Text(
            label,
            style: TextStyle(
              color: isSelected ? Colors.white : Colors.white54,
              fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }
}
