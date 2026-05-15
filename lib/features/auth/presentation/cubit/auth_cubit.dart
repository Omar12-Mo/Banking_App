import 'package:banking_mobile_app/features/auth/data/repository/auth_repo.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit({required this.authRepo}) : super(AuthInitial());

  final AuthRepo authRepo;

  // login attributes
  final GlobalKey<FormState> loginFormKey = GlobalKey();
  final TextEditingController loginEmailController = TextEditingController();
  final TextEditingController loginPassswordController =
      TextEditingController();

  //register attributes
  final GlobalKey<FormState> registerFormKey = GlobalKey();
  final TextEditingController registerEmailController = TextEditingController();
  final TextEditingController registerPasswordController =
      TextEditingController();
  final TextEditingController registerPhoneController = TextEditingController();
  final TextEditingController registerNameController = TextEditingController();

  //login method
  void login() async {
    emit(LoginLoadingState());
    final result = await authRepo.login(
      email: loginEmailController.text,
      password: loginPassswordController.text,
    );
    
    result.fold(
      ifLeft: (l) {
        emit(LoginFailState(message: l));
      },
      ifRight: (r) {
        emit(LoginSuccessState(message: r));
      },
    );
  }

  //register
  void register() async {
    emit(LoginLoadingState());
    final result = await authRepo.register(
      email: registerEmailController.text,
      password: registerPasswordController.text,
      phone: registerPhoneController.text,
      name: registerNameController.text,
    );

    result.fold(
      ifLeft: (l) {
        emit(LoginFailState(message: l));
      },
      ifRight: (r) {
        emit(LoginSuccessState(message: r));
      },
    );
  }
}
