import 'package:banking_mobile_app/core/service/service_locator.dart';
import 'package:banking_mobile_app/core/theme/app_text_style.dart';

import 'package:banking_mobile_app/features/auth/presentation/components/if_new_user.dart';

import 'package:banking_mobile_app/features/auth/presentation/components/sign_in_form.dart';
import 'package:banking_mobile_app/features/auth/presentation/cubit/auth_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';

class SingInView extends StatelessWidget {
  const SingInView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<AuthCubit>(),
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Gap(150),
                Text("Sign In", style: AppTextStyle.mediumPrimary32),
                Gap(20),
                SignInForm(),
                Gap(30),
                IfNewUser(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
