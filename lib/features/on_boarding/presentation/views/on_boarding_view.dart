import 'package:banking_mobile_app/features/on_boarding/data/models/boarding_model.dart';
import 'package:banking_mobile_app/features/on_boarding/presentation/components/on_boarding_page.dart';
import 'package:flutter/material.dart';

class OnBoardingView extends StatefulWidget {
  const OnBoardingView({super.key});

  @override
  State<OnBoardingView> createState() => _OnBoardingViewState();
}

class _OnBoardingViewState extends State<OnBoardingView> {
  late PageController pageController;

  @override
  void initState() {
    super.initState();
    pageController = PageController();
  }

  @override
  void dispose() {
    super.dispose();
    pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        controller: pageController,
        itemCount: boardingModels.length,
        itemBuilder: (context, index) {
          return OnBoardingPage(
            boardingModel: boardingModels[index],
            pageController: pageController,
            index: index,
          );
        },
      ),
    );
  }
}
