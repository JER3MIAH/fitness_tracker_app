import 'package:fitness_tracker_app/src/features/auth/presentation/widgets/widgets.dart';
import 'package:fitness_tracker_app/src/shared/shared.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AppColumn(
        height: Dims.deviceSize.height,
        width: Dims.deviceSize.width,
        padding: EdgeInsets.symmetric(horizontal: 15.dx).copyWith(top: 55.dy),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(splashImage),
            fit: BoxFit.fitHeight,
          ),
        ),
        children: [
          backAndTitle(title: 'Sign up'),
          YBox(80.dy),
          const AppTextField(labelText: 'Username'),
          const AppTextField(labelText: 'Email'),
          const AppTextField(
            labelText: 'Password',
            isPasswordField: true,
          ),
          StartAlignedText(
            text: 'Forgot password?',
            style: TextStyle(
              color: appColors.white,
              fontSize: 13.sp,
              fontWeight: FontWeight.w800,
            ),
          ),
          YBox(74.dy),
          AppButton(
            title: 'Continue',
            onTap: () {},
          ),
          YBox(74.dy),
          const OtherLoginOptionsWidget()
        ],
      ),
    );
  }
}
