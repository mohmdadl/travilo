import 'package:flutter/material.dart';

import '../../../../../core/utils/app_color.dart';
import '../../../../../core/resources/app_images.dart';
import '../../../../../core/utils/styles.dart';
import '../../../../../core/widgets/custom_list_tile.dart';
import 'custom_toggle_switch.dart';

class SettingSection extends StatelessWidget {
  const SettingSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,

      children: [
        const Text("ACCOUNT & SETTINGS", style: AppStyles.textStyleBoldDark20),
        const SizedBox(height: 32),
        Container(
          decoration: BoxDecoration(
            color: AppColors.lightBackgroundColor,
            borderRadius: BorderRadius.circular(16),
          ),
          child: Column(
            children: [
              CustomListTile(
                title: "Account Settings",
                icon: AppImages.myBookingsImage,
                onTap: () {},
              ),
              const Divider(thickness: 0.1),
              CustomListTile(
                title: "Notifications",
                icon: AppImages.pastTripsImage,
                trailing: const CustomToggleSwitch(),

                onTap: () {},
              ),
              const Divider(thickness: 0.1),
              CustomListTile(
                title: "language",
                icon: AppImages.heartImage,
                onTap: () {},
              ),
              const Divider(thickness: 0.1),

              CustomListTile(
                title: "Currency",
                icon: AppImages.currencyImage,
                onTap: () {},
              ),
            ],
          ),
        ),
      ],
    );
  }
}
