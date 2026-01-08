import 'package:flutter/material.dart';
import 'package:travilo/features/profile/presentation/views/widgets/setting_section.dart';
import 'package:travilo/features/profile/presentation/views/widgets/support_section.dart';
import 'package:travilo/features/profile/presentation/views/widgets/top_profile_info.dart';
import 'package:travilo/features/profile/presentation/views/widgets/travel_management.dart';

import 'log_out_button.dart';

class ProfileViewBody extends StatelessWidget {
  const ProfileViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final spaceHeight = constraints.maxHeight * 0.05;
        return Center(
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 16,
              vertical: spaceHeight / 1.5,
            ),
            child: ListView(
              children: [
                SizedBox(height: spaceHeight),
                TopProfileInfo(spaceHeight: spaceHeight),
                SizedBox(height: spaceHeight),
                const TravelManagement(),
                SizedBox(height: spaceHeight),
                const SettingSection(),
                SizedBox(height: spaceHeight),
                const SupportSection(),
                SizedBox(height: spaceHeight * 2),
                LogOutButton(onTap: () {}),
              ],
            ),
          ),
        );
      },
    );
  }
}
