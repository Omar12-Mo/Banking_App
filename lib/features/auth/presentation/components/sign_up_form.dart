import 'package:banking_mobile_app/core/routes/app_routes.dart';
import 'package:banking_mobile_app/core/shared/flutter%20toast/flutter_toast.dart';
import 'package:banking_mobile_app/features/auth/presentation/components/default_text_filled.dart';
import 'package:banking_mobile_app/features/auth/presentation/components/password_text_filled.dart';
import 'package:banking_mobile_app/features/auth/presentation/cubit/auth_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:gap/gap.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class SignUpForm extends StatelessWidget {
  const SignUpForm({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthCubit, AuthState>(
      listener: (context, state) {
        if (state is LoginSuccessState) {
          FlutterToast.showToast(
            message: state.message,
            state: FlutterToast.toastSuccess,
          );
          Navigator.pop(context);
        } else if (state is LoginFailState) {
          FlutterToast.showToast(
            message: state.message,
            state: FlutterToast.toastFail,
          );
        }
      },
      builder: (context, state) {
        return Form(
          key: BlocProvider.of<AuthCubit>(context).registerFormKey,
          child: Column(
            children: [
              DefaultTextFilled(
                controller: BlocProvider.of<AuthCubit>(
                  context,
                ).registerNameController,
                label: "Full Name",
                iconData: Icons.person,
              ),
              Gap(20),
              DefaultTextFilled(
                controller: BlocProvider.of<AuthCubit>(
                  context,
                ).registerPhoneController,
                label: "Phone Number",
                iconData: Icons.phone,
              ),
              Gap(20),
              DefaultTextFilled(
                controller: BlocProvider.of<AuthCubit>(
                  context,
                ).registerEmailController,
                label: "Email Address",
                iconData: Icons.email_outlined,
              ),
              Gap(20),
              PasswordTextFilled(
                controller: BlocProvider.of<AuthCubit>(
                  context,
                ).registerPasswordController,
              ),
              Gap(40),

              state is LoginLoadingState
                  ? CircularProgressIndicator()
                  : ElevatedButton(
                      onPressed: () {
                        BlocProvider.of<AuthCubit>(context).register();
                      },
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 100.0,
                          vertical: 15,
                        ),
                        child: Text("Sign Up"),
                      ),
                    ),
            ],
          ),
        );
      },
    );
  }
}
