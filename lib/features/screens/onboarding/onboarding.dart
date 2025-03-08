// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors
import 'package:e_commerce_app/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:e_commerce_app/utils/constants/image_strings.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:e_commerce_app/utils/constants/texte_strings.dart';
import 'package:e_commerce_app/utils/helpers/helper_functions.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class AppOnboardingScreen extends StatelessWidget {
  const AppOnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(AppOnBoardingController());
    return Scaffold(
      body: Stack(
        children: [
          // Horizontal Scrollable Pages
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: [

              OnBoardingPage(
                image: AppImages.onBoardingImage1,
                title: AppTexts.onBoardingTitle1,
                subtitles: AppTexts.onBoardingSubTitle1,
              ),

              OnBoardingPage(
                image: AppImages.onBoardingImage2,
                title: AppTexts.onBoardingTitle2,
                subtitles: AppTexts.onBoardingSubTitle2,
              ),

              OnBoardingPage(
                image: AppImages.onBoardingImage3,
                title: AppTexts.onBoardingTitle3,
                subtitles: AppTexts.onBoardingSubTitle3,
              ),

            ],
          ),
          OnBoardingSkip(),
          OnboardingDotNavigationIndicator()
        ,
        AppOnBoardingNextButton()
        ],
      ),
    );
  }
}

class AppOnBoardingNextButton extends StatelessWidget {
  const AppOnBoardingNextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = AppHelperFunctions.isDarkMode(context);
    return Positioned(
      right: 24,
      bottom: kBottomNavigationBarHeight,
      child: ElevatedButton(
        onPressed: ()=> AppOnBoardingController.instance.nextPage(),
        style: ElevatedButton.styleFrom(
          shape: CircleBorder(),
          backgroundColor: dark? AppColors.primary : Colors.black
        ),
        child: Icon(Icons.arrow_forward_ios),
        
        
      )
    );
  }
}

class OnboardingDotNavigationIndicator extends StatelessWidget {
  const OnboardingDotNavigationIndicator({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = AppOnBoardingController.instance;
    final dark = Theme.of(context).brightness == Brightness.dark;
    return Positioned(
      
      bottom: 70,
      left: 20,
      child: SmoothPageIndicator(

        controller: controller.pageController,

        onDotClicked: controller.dotNavigationClick,
        count: 3, 
        effect: ExpandingDotsEffect(activeDotColor: dark ? AppColors.white : Colors.black,dotHeight: 6),));
  }
}

class OnBoardingSkip extends StatelessWidget {
  const OnBoardingSkip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: kToolbarHeight,
      right: 10,
      child: TextButton(onPressed: ()=> AppOnBoardingController.instance.skipPage(), child: const Text('skip')),
      
      );
  }
}

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({
    super.key, required this.image, required this.title, required this.subtitles
  });
  final String image, title, subtitles;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          Image(
            height: 600,
            width: 300,
            image: AssetImage(image)
            ),
            const SizedBox(
              height: AppSizes.spaceBtwItems,
            ),
            Text(
              title,
              style: Theme.of(context).textTheme.headlineMedium,
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: AppSizes.spaceBtwItems,
            ),
            Text(
              subtitles,
              style: Theme.of(context).textTheme.bodyMedium,
              textAlign: TextAlign.center,
            )
        ],
      ),
    );
  }
}