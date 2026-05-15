import 'package:banking_mobile_app/core/service/service_locator.dart';
import 'package:banking_mobile_app/core/shared/widgets/leading_icon.dart';
import 'package:banking_mobile_app/core/theme/app_text_style.dart';

import 'package:banking_mobile_app/features/auth/presentation/components/have_account.dart';

import 'package:banking_mobile_app/features/auth/presentation/components/sign_up_form.dart';
import 'package:banking_mobile_app/features/auth/presentation/cubit/auth_cubit.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<AuthCubit>(),
      child: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  leading(),

                  Gap(50),
                  Text("Sign Up", style: AppTextStyle.mediumPrimary32),
                  Gap(35),
                  SignUpForm(),
                  Gap(30),
                  HasAccount(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
