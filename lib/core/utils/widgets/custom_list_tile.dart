import 'package:flutter/material.dart';

import '../app_color.dart';
import '../styles.dart';

class CustomListTile extends StatelessWidget {
  final String title;
  final String icon;
  final VoidCallback onTap;
  final Widget? trailing;
  const CustomListTile({
    required this.title,
    required this.icon,
    required this.onTap,
    super.key,
    this.trailing,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      minTileHeight: 70,
      title: Text(title, style: AppStyles.textStyleBold20),
      leading: Container(
        height: 55,
        width: 55,
        alignment: Alignment.centerLeft,
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          color: AppColors.secondBackgroundColor,
        ),
        child: Center(child: Image.asset(icon)),
      ),
      trailing:
          trailing ??
          const Icon(Icons.arrow_forward_ios, color: AppColors.primaryColor),
      onTap: onTap,
    );
  }
}
