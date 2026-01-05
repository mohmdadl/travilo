import 'package:flutter/material.dart';
import 'package:travilo/features/profile/presentation/views/widgets/profile_view_body.dart';

import '../../../../core/utils/app_color.dart';
import '../../../../core/widgets/custom_app_bar.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});
  static const String routeName = 'profile_view';

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.blackBackgroundColor,
      appBar: CustomAppBar(title: 'Profile', withIcon: true),
      body:ProfileViewBody() ,
    );
  }
}
