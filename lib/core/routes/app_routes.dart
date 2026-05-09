import 'package:banking_mobile_app/App/main_view.dart';
import 'package:banking_mobile_app/features/Request_money/presentation/request_money_view.dart';
import 'package:banking_mobile_app/features/auth/presentation/sign_up_view.dart';
import 'package:banking_mobile_app/features/auth/presentation/sing_in_view.dart';
import 'package:banking_mobile_app/features/cards/presentation/my_cards_view.dart';
import 'package:banking_mobile_app/features/category_chart/presentation/category_chart_view.dart';
import 'package:banking_mobile_app/features/home/presentation/home_view.dart';
import 'package:banking_mobile_app/features/language/presentation/languages_view.dart';
import 'package:banking_mobile_app/features/on_boarding/presentation/views/on_boarding_view.dart';
import 'package:banking_mobile_app/features/profille/presentation/profile_view.dart';
import 'package:banking_mobile_app/features/send_money/presentation/send_money_view.dart';
import 'package:banking_mobile_app/features/settings/presentation/settings_view.dart';
import 'package:banking_mobile_app/features/statistics/presentation/statistics_view.dart';
import 'package:banking_mobile_app/features/transaction_history/presentation/transaction_history_view.dart';
import 'package:flutter/material.dart';

class Routes {
  static const String initalRoute = "/";
  static const String onBoardingView = "/onBoardingView";
  static const String signinView = "/loginView";
  static const String signupView = "/signupView";
  static const String mainView = "/mainView";
  static const String myCardsView = "/myCardsView";
  static const String categoryChartView = "/categoryChartView";
  static const String homeView = "/homeView";
  static const String langView = "/langView";
  static const String profileView = "/profileView";
  static const String requestMoneyView = "/requestMoneyView";
  static const String sendMoneyView = "/sendMoneyView";
  static const String settingsView = "/settingsView";
  static const String statisticsView = "/statisticsView";
  static const String transactionHistoryView = "/transactionHistoryView";
}

class AppRoutes {
  static Route generateRoute(RouteSettings routesettings) {
    switch (routesettings.name) {
      case Routes.initalRoute:
        return MaterialPageRoute(
          builder: (contex) {
            return OnBoardingView();
          },
        );
      case Routes.categoryChartView:
        return MaterialPageRoute(
          builder: (contex) {
            return CategoryChartView();
          },
        );
      case Routes.homeView:
        return MaterialPageRoute(
          builder: (contex) {
            return HomeView();
          },
        );
      case Routes.langView:
        return MaterialPageRoute(
          builder: (contex) {
            return LanguagesView();
          },
        );
      case Routes.myCardsView:
        return MaterialPageRoute(
          builder: (contex) {
            return MyCardsView();
          },
        );
      case Routes.onBoardingView:
        return MaterialPageRoute(
          builder: (contex) {
            return OnBoardingView();
          },
        );
      case Routes.profileView:
        return MaterialPageRoute(
          builder: (contex) {
            return ProfileView();
          },
        );
      case Routes.requestMoneyView:
        return MaterialPageRoute(
          builder: (contex) {
            return RequestMoneyView();
          },
        );
      case Routes.sendMoneyView:
        return MaterialPageRoute(
          builder: (contex) {
            return SendMoneyView();
          },
        );
      case Routes.settingsView:
        return MaterialPageRoute(
          builder: (contex) {
            return SettingsView();
          },
        );
      case Routes.signinView:
        return MaterialPageRoute(
          builder: (contex) {
            return SingInView();
          },
        );
      case Routes.signupView:
        return MaterialPageRoute(
          builder: (contex) {
            return SignUpView();
          },
        );
      case Routes.statisticsView:
        return MaterialPageRoute(
          builder: (contex) {
            return StatisticsView();
          },
        );
      case Routes.transactionHistoryView:
        return MaterialPageRoute(
          builder: (contex) {
            return TransactionHistoryView();
          },
        );
      default:
        return MaterialPageRoute(
          builder: (contex) {
            return Scaffold(body: Center(child: Text("Not Found")));
          },
        );
    }
  }
}
