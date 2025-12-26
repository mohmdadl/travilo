import 'package:flutter/material.dart';
import 'package:travilo/features/profile/presentation/views/widgets/profile_circle_avatar.dart';

import '../../../../../core/utils/app_color.dart';
import '../../../../../core/utils/styles.dart';
import '../../../../../core/utils/widgets/custom_button.dart';
import '../edit_profile_view.dart';

class TopProfileInfo extends StatelessWidget {
  const TopProfileInfo({
    super.key,
    required this.spaceHeight,
    this.withEditing = false,
  });
  final double spaceHeight;
  final bool withEditing;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ProfileCircleAvatar(withEditing: withEditing),
        SizedBox(height: spaceHeight),
        Text(
          "Michael Dan",
          style: AppStyles.textStyleMedium20.copyWith(
            color: AppColors.primaryColor,
          ),
        ),
        SizedBox(height: spaceHeight / 6),

        const Text(
          "Turner.Fay@hotmail.com",
          style: AppStyles.textStyleMedium20,
        ),
        SizedBox(height: spaceHeight),
        !withEditing
            ? CustomButton(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (builder) {
                      return const EditProfileView();
                    },
                  ),
                );
              },
              text: "Edit Profile",
            )
            : const SizedBox(),
      ],
    );
  }
}
