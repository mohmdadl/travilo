import 'package:flutter/material.dart';
import 'package:travilo/features/monuments/presentation/views/widgets/custom_tab_switch.dart';
import 'package:travilo/features/monuments/presentation/views/widgets/monument_card.dart';

class MonumentsViewBody extends StatefulWidget {
  const MonumentsViewBody({super.key});

  @override
  State<MonumentsViewBody> createState() => _MonumentsViewBodyState();
}

class _MonumentsViewBodyState extends State<MonumentsViewBody> {
  int _selectedIndex = 0; // 0: All, 1: Monuments, 2: Tours

  final List<Map<String, String>> _monuments = [
    {
      "title": "Eiffel Tower",
      "count": "120+ tours",
      "image": "assets/images/tour.jpg",
    },
    {
      "title": "Louvre Museum",
      "count": "120+ tours",
      "image": "assets/images/tour.jpg",
    },
    {
      "title": "Notre Dame",
      "count": "120+ tours",
      "image": "assets/images/tour.jpg",
    },
  ];

  final List<Map<String, String>> _tours = [
    {
      "title": "Walking Tours",
      "count": "120+ tours",
      "image": "assets/images/tour.jpg", // Using same placeholder
    },
    {
      "title": "City Bus Tour",
      "count": "80+ tours",
      "image": "assets/images/tour.jpg",
    },
    {
      "title": "Seine Cruise",
      "count": "50+ tours",
      "image": "assets/images/tour.jpg",
    },
    {
      "title": "Night Tour",
      "count": "30+ tours",
      "image": "assets/images/tour.jpg",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 16),
          // Tab Switcher
          CustomTabSwitch(
            onTabChanged: (index) {
              setState(() {
                _selectedIndex = index;
              });
            },
          ),
          const SizedBox(height: 24),

          // Content based on selection
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: _buildContent(),
              ),
            ),
          ),
        ],
      ),
    );
  }

  List<Widget> _buildContent() {
    List<Widget> content = [];

    // Logic:
    // All (0): Show "Tours" section -> "Monuments" section
    // Monuments (1): Show "Monuments" section
    // Tours (2): Show "Tours" section

    if (_selectedIndex == 2 || _selectedIndex == 0) {
      // Tours Section
      content.add(_buildSectionHeader("Tours"));
      content.addAll(
        _tours.map(
          (item) => MonumentCard(
            title: item["title"]!,
            toursCount: item["count"]!,
            imagePath: item["image"]!,
            onTap: () {},
          ),
        ),
      );
      content.add(const SizedBox(height: 24));
    }

    if (_selectedIndex == 1 || _selectedIndex == 0) {
      // Monuments Section
      content.add(_buildSectionHeader("Monuments"));
      content.addAll(
        _monuments.map(
          (item) => MonumentCard(
            title: item["title"]!,
            toursCount: item["count"]!,
            imagePath: item["image"]!,
            onTap: () {},
          ),
        ),
      );
      content.add(const SizedBox(height: 24));
    }

    return content;
  }

  Widget _buildSectionHeader(String title) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: Text(
        title,
        style: const TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
    );
  }
}
