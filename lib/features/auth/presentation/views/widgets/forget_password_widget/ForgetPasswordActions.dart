
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travilo/features/auth/presentation/bloc/auth_cubit.dart';
import 'package:travilo/features/auth/presentation/bloc/auth_state.dart';

import '../../../../../../core/utils/widgets/custom_button.dart';
import '../../../../../../core/utils/widgets/custom_rich_text.dart';

class ForgetPasswordActions extends StatelessWidget {
   
final TextEditingController controller; // استقبله هنا كمان
  const ForgetPasswordActions({super.key, required this.controller});
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthCubit, AuthState>(
      listener: (context, state) {
       if(state is AuthSucsess){
           ScaffoldMessenger.of(
              context,
            ).showSnackBar(SnackBar(content: Text(state.message)));
       }
       if(state is AuthError){
        ScaffoldMessenger.of(
              context,
            ).showSnackBar(SnackBar(content: Text(state.message)));
       }
      },
      builder: (context, state) {
                    if(state is AuthLoading){
              return Center(child: CircularProgressIndicator(),);
            }
        return Column(

          children: [
            
            CustomButton(onTap: () {
              context.read<AuthCubit>().forgetPassword(email: controller.text.trim());
            }, text: "Send Reset Link", withIcon: true),
            const SizedBox(height: 24),
            CustomRichText(
              text1: "Remember password?",
              text2: "Log in",
              ontap: () {},
            ),
          ],
        );
      },
    );
  }
}
