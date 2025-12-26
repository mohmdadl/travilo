import 'package:flutter/material.dart';

import '../../../../../core/utils/app_color.dart';
import '../../../../../core/utils/app_images.dart';
import '../../../../../core/utils/styles.dart';
import '../../../../../core/utils/widgets/custom_list_tile.dart';

class TravelManagement extends StatelessWidget {
  const TravelManagement({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,

      children: [
        const Text("TRAVEL MANAGEMENT", style: AppStyles.textStyleBoldDark20),
        const SizedBox(height: 32),
        Container(
          decoration: BoxDecoration(
            color: AppColors.lightBackgroundColor,
            borderRadius: BorderRadius.circular(16),
          ),
          child: Column(
            children: [
              CustomListTile(
                title: "My Bookings",
                icon: AppImages.myBookingsImage,
                onTap: () {},
              ),
              const Divider(thickness: 0.1),
              CustomListTile(
                title: "Past Trips",
                icon: AppImages.pastTripsImage,
                onTap: () {},
              ),
              const Divider(thickness: 0.1),
              CustomListTile(
                title: "Saved Places",
                icon: AppImages.heartImage,
                onTap: () {},
              ),
            ],
          ),
        ),
      ],
    );
  }
}
