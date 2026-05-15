import 'package:banking_mobile_app/core/routes/app_routes.dart';
import 'package:banking_mobile_app/core/theme/app_text_style.dart';
import 'package:flutter/material.dart';

class IfNewUser extends StatelessWidget {
  const IfNewUser({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, Routes.signupView);
        },
        child: RichText(
          textAlign: TextAlign.center,
          text: TextSpan(
            children: [
              TextSpan(
                text: "I’m a new user",
                style: AppTextStyle.regularSecondry14,
              ),
              TextSpan(
                text: " Sign Up",
                style: AppTextStyle.mediumBlow16,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
