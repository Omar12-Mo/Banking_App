part of 'auth_cubit.dart';

@immutable
sealed class AuthState {}

final class AuthInitial extends AuthState {}

final class LoginLoadingState extends AuthState {}

final class LoginSuccessState extends AuthState {
  final String message;

  LoginSuccessState({required this.message});

 
}

final class LoginFailState extends AuthState {
  final String message;
  LoginFailState({required this.message});
}
