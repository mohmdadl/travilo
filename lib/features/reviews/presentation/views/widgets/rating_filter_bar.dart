import 'package:flutter/material.dart';

class RatingFilterBar extends StatefulWidget {
  const RatingFilterBar({super.key});

  @override
  State<RatingFilterBar> createState() => _RatingFilterBarState();
}

class _RatingFilterBarState extends State<RatingFilterBar> {

  String selectedFilter = 'All';


  final List<Map<String, dynamic>> filters = [
    {'label': 'All', 'icon': Icons.auto_awesome},
    {'label': '5 Stars', 'icon': Icons.star},
    {'label': '4 Stars', 'icon': Icons.star},
    {'label': '3 Stars', 'icon': Icons.star},
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 16, bottom: 12),
          child: Text(
            'Filter by Rating',
            style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.w500),
          ),
        ),
        SizedBox(
          height: 50,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.symmetric(horizontal: 12),
            itemCount: filters.length,
            itemBuilder: (context, index) {
              final item = filters[index];
              bool isSelected = selectedFilter == item['label'];
          
              return GestureDetector(
                onTap: () {
                  setState(() {
                    selectedFilter = item['label'];
                  });
                },
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 300),
                  margin: const EdgeInsets.symmetric(horizontal: 4),
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  decoration: BoxDecoration(
                   
                    color: isSelected ? Colors.blue : Colors.white,
                    borderRadius: BorderRadius.circular(25),
                    border: Border.all(
                      color: isSelected ? Colors.blueAccent : Colors.grey.shade300,
                      width: 1.5,
                    ),
                  ),
                  child: Row(
                    children: [
                      Icon(
                        item['icon'],
                        size: 18,
                        color: isSelected ? Colors.white : Colors.orangeAccent,
                      ),
                      const SizedBox(width: 8),
                      Text(
                        item['label'],
                        style: TextStyle(
                          color: isSelected ? Colors.white : Colors.black87,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}