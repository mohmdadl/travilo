import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travilo/core/resources/app_colors.dart';
import 'package:travilo/features/drawer/presentation/bloc/drawer_bloc.dart';
import 'package:travilo/features/drawer/presentation/bloc/drawer_event.dart';
import 'package:travilo/features/drawer/presentation/bloc/drawer_state.dart';
import 'package:travilo/features/drawer/presentation/widgets/drawer_item_widget.dart';

class CustomDrawerView extends StatelessWidget {
  const CustomDrawerView({super.key});

  final List<Map<String, String>> _drawerItems = const [
    {'title': 'My bookings', 'icon': ''},
    {'title': 'Language', 'icon': 'assets/icons/language.png'},
    {'title': 'About the App', 'icon': 'assets/icons/about.png'},
    {'title': 'Policy', 'icon': 'assets/icons/policy.png'},
    {'title': 'Contact Us', 'icon': 'assets/icons/contact.png'},
    {'title': 'Log Out', 'icon': 'assets/icons/log_out.png'},
  ];

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.transparent, // Important for floating effect
      elevation: 0,
      width: MediaQuery.of(context).size.width * 0.85, // Adjust width
      child: Container(
        margin: const EdgeInsets.only(
          top: 50,
          bottom: 50,
          left: 16,
        ), // Floating margins
        decoration: BoxDecoration(
          color: const Color(0xFF192633), // Deep Navy
          borderRadius: const BorderRadius.only(
            topRight: Radius.circular(30),
            bottomRight: Radius.circular(30),
            topLeft: Radius.circular(30),
            bottomLeft: Radius.circular(30),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.3),
              blurRadius: 20,
              offset: const Offset(5, 5),
            ),
          ],
        ),
        child: Column(
          children: [
            const SizedBox(height: 40),
            // Header Logo
            Image.asset('assets/images/travilo.png', height: 40),
            const SizedBox(height: 40),

            // Items
            Expanded(
              child: BlocBuilder<DrawerBloc, DrawerState>(
                builder: (context, state) {
                  return ListView.builder(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    itemCount: _drawerItems.length,
                    itemBuilder: (context, index) {
                      final item = _drawerItems[index];
                      return DrawerItemWidget(
                        title: item['title']!,
                        iconPath: item['icon']!,
                        isSelected: state.selectedIndex == index,
                        onTap: () {
                          if (item['title'] == 'Log Out') {
                            context.read<DrawerBloc>().add(LogoutTapped());
                          } else {
                            context.read<DrawerBloc>().add(
                              DrawerItemTapped(index),
                            );
                          }
                        },
                      );
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
