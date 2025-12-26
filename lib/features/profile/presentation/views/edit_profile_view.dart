import 'package:flutter/material.dart';
import 'package:travilo/features/profile/presentation/views/widgets/edit_profile_body.dart';

import '../../../../core/utils/app_color.dart';
import '../../../../core/utils/widgets/custom_app_bar.dart';

class EditProfileView extends StatelessWidget {
  const EditProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.blackBackgroundColor,
      appBar: CustomAppBar(title: "Edit Profile"),
      body: EditProfileBody(),
    );
  }
}
