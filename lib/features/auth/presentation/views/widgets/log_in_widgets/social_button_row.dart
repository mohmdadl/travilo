import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:travilo/core/utils/app_images.dart';
import 'package:travilo/features/auth/presentation/bloc/auth_google_cubit.dart';
import 'package:travilo/features/auth/presentation/bloc/auth_google_state.dart';
import 'package:travilo/home_layout.dart';


class SocialButtonsRow extends StatelessWidget {
  const SocialButtonsRow({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<GoogleAuthCubit, GoogleAuthState>(
      listener: (context, state) {
       if (state is GoogleAuthSuccess) {
        ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: Text(state.message)));
         Navigator.of(context).pushNamed(HomeLayout.routeName);
      } else if (state is GoogleAuthError) {
        ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: Text(state.message)));
      }
      },
      builder: (context, state) {
         if (state is GoogleAuthLoading) {
        return Center(child: CircularProgressIndicator());
      }
        return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: (){
                context.read<GoogleAuthCubit>().signIn();
              },
              child: _socialButton("Google", AppImages.iconGoogleImage)),
            SizedBox(width: 32),
          ],
        );
      },
    );
  }

  Widget _socialButton(String text, String pathImage) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.white24),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(pathImage),
            const SizedBox(width: 12),
            Text(text),
          ],
        ),
      ),
    );
  }
}
