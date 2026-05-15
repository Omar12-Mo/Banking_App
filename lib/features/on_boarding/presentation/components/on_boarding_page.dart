import 'package:banking_mobile_app/core/database/cache/cache_helper.dart';
import 'package:banking_mobile_app/core/routes/app_routes.dart';
import 'package:banking_mobile_app/core/service/service_locator.dart';
import 'package:banking_mobile_app/core/theme/app_colors.dart';
import 'package:banking_mobile_app/core/theme/app_text_style.dart';
import 'package:banking_mobile_app/features/on_boarding/data/models/boarding_model.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({
    super.key,
    required this.boardingModel,
    required this.pageController,
    required this.index,
  });
  final BoardingModel boardingModel;
  final PageController pageController;
  final int index;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 50.0),
      child: Column(
        children: [
          Gap(145),
          Image.asset(boardingModel.image),
          Gap(70),
          SmoothPageIndicator(
            controller: pageController,
            count: boardingModels.length,
            effect: WormEffect(
              activeDotColor: AppColors.primaryColor,
              dotColor: AppColors.dotColor,
            ),
          ),
          Gap(30),
          Text(
            textAlign: TextAlign.center,
            boardingModel.tittle,
            style: AppTextStyle.semiboldPrimary,
          ),
          Gap(20),
          Text(
            textAlign: TextAlign.center,
            boardingModel.description,
            style: AppTextStyle.regularSecondry14,
          ),
          Spacer(),
          ElevatedButton(
            onPressed: () {
              if (index == 2) {
                Navigator.pushReplacementNamed(context, Routes.signinView);
                sl<CacheHelper>().saveData(
                  key: CacheHelper.isVisitedKey,
                  value: true,
                );
              } else {
                pageController.nextPage(
                  duration: Duration(milliseconds: 200),
                  curve: Curves.bounceIn,
                );
              }
            },
            child: Center(
              child: Text("next", style: AppTextStyle.semiboldWhite),
            ),
          ),
          Gap(50),
        ],
      ),
    );
  }
}
