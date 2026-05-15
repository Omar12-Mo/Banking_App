import 'package:banking_mobile_app/core/routes/app_routes.dart';
import 'package:banking_mobile_app/core/theme/app_text_style.dart';
import 'package:flutter/material.dart';

class HasAccount extends StatelessWidget {
  const HasAccount({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: () => Navigator.pushNamed(context,Routes.signinView),
        child: RichText(
          textAlign: TextAlign.center,
          text: TextSpan(
            children: [
              TextSpan(
                text: "Already have an account.",
                style: AppTextStyle.regularSecondry14,
              ),
              TextSpan(
                text: " Sign In",
                style: AppTextStyle.mediumBlow16,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

