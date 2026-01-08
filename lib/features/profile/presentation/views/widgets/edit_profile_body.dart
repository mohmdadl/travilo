import 'package:flutter/material.dart';
import 'package:travilo/features/profile/presentation/views/widgets/top_profile_info.dart';

import '../../../../../core/widgets/custom_button.dart';
import 'input_field_section.dart';

class EditProfileBody extends StatelessWidget {
  const EditProfileBody({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final spaceHeight = constraints.maxHeight * 0.05;

        return Padding(
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: spaceHeight),
          child: ListView(
            children: [
              TopProfileInfo(spaceHeight: spaceHeight, withEditing: true),
              SizedBox(height: spaceHeight / 2),
              const InputFieldSection(),
              SizedBox(height: spaceHeight),
              CustomButton(onTap: () {}, text: "Save Changes"),
            ],
          ),
        );
      },
    );
  }
}
