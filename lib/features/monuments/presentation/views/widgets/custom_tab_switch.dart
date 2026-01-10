import 'package:flutter/material.dart';

class CustomTabSwitch extends StatefulWidget {
  final Function(int) onTabChanged;
  const CustomTabSwitch({super.key, required this.onTabChanged});

  @override
  State<CustomTabSwitch> createState() => _CustomTabSwitchState();
}

class _CustomTabSwitchState extends State<CustomTabSwitch> {
  int _selectedIndex = 0;
  final List<String> _tabs = ["All", "Monuments", "Tours"];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(4),
      decoration: BoxDecoration(
        color: const Color(0xFF1F222A),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: List.generate(_tabs.length, (index) {
          final isSelected = _selectedIndex == index;
          return Expanded(
            child: GestureDetector(
              onTap: () {
                setState(() {
                  _selectedIndex = index;
                });
                widget.onTabChanged(index);
              },
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 200),
                padding: const EdgeInsets.symmetric(vertical: 12),
                decoration: BoxDecoration(
                  color: isSelected
                      ? const Color(0xFF191B20)
                      : Colors
                            .transparent, // Slightly darker/lighter background for selected?
                  // Checking screenshot: Selected "Monuments" is darker/lighter than container?
                  // It looks like the container is dark grey, and the selected item is a darker black/grey or highlighted.
                  // Let's assume generic "Tab" style for now, maybe simple background change.
                  // Actually in the screenshot "Monuments" is selected and looks like a button.
                  // Let's us a distinct color for selected.
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Text(
                    _tabs[index],
                    style: TextStyle(
                      color: isSelected ? Colors.white : Colors.grey,
                      fontWeight: isSelected
                          ? FontWeight.bold
                          : FontWeight.w500,
                      fontSize: 14,
                    ),
                  ),
                ),
              ),
            ),
          );
        }),
      ),
    );
  }
}
