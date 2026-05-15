import 'package:banking_mobile_app/core/database/cache/cache_helper.dart';
import 'package:banking_mobile_app/core/routes/app_routes.dart';
import 'package:banking_mobile_app/core/service/service_locator.dart';
import 'package:banking_mobile_app/core/shared/flutter%20toast/flutter_toast.dart';
import 'package:banking_mobile_app/features/auth/presentation/components/default_text_filled.dart';
import 'package:banking_mobile_app/features/auth/presentation/components/password_text_filled.dart';
import 'package:banking_mobile_app/features/auth/presentation/cubit/auth_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:gap/gap.dart';

class SignInForm extends StatelessWidget {
  const SignInForm({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthCubit, AuthState>(
      listener: (context, state) {
        if (state is LoginSuccessState) {
          FlutterToast.showToast(
            message: state.message,
            state: FlutterToast.toastSuccess,
          );
          sl<CacheHelper>().saveData(
            key: CacheHelper.isLoggedInKey,
            value: true,
          );
          Navigator.pushNamedAndRemoveUntil(context, Routes.mainView, (route) => false);
        } else if (state is LoginFailState) {
          FlutterToast.showToast(
            message: state.message,
            state: FlutterToast.toastFail,
          );
        }
      },
      builder: (context, state) {
        return Form(
          key: BlocProvider.of<AuthCubit>(context).loginFormKey,
          child: Column(
            children: [
              DefaultTextFilled(
                controller: BlocProvider.of<AuthCubit>(
                  context,
                ).loginEmailController,
                label: "Email Address",
                iconData: Icons.email_outlined,
              ),
              Gap(20),
              PasswordTextFilled(
                controller: BlocProvider.of<AuthCubit>(
                  context,
                ).loginPassswordController,
              ),
              Gap(40),
              state is LoginLoadingState
                  ? CircularProgressIndicator()
                  : ElevatedButton(
                      onPressed: () {
                        BlocProvider.of<AuthCubit>(context).login();
                      },
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 120.0,
                          vertical: 15,
                        ),
                        child: Text("Sign in"),
                      ),
                    ),
            ],
          ),
        );
      },
    );
  }
}
