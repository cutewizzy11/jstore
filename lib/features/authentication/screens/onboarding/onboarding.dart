import 'package:flutter/material.dart';
import 'package:jstore/features/authentication/screens/onboarding/widgets/onboarding_page.dart';
import 'package:jstore/features/authentication/screens/onboarding/widgets/onboarding_skip.dart';
import 'package:jstore/utils/constants/image_strings.dart';
import 'package:jstore/utils/constants/text_strings.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            children: const [
              OnBoardingPage(
                image: JImages.onBoardingImage1,
                title: JTexts.onboardingTitle1,
                subTitle: JTexts.onboardingSubTitle1,
              ),
              OnBoardingPage(
                image: JImages.onBoardingImage2,
                title: JTexts.onboardingTitle2,
                subTitle: JTexts.onboardingSubTitle2,
              ),
              OnBoardingPage(
                image: JImages.onBoardingImage3,
                title: JTexts.onboardingTitle3,
                subTitle: JTexts.onboardingSubTitle3,
              ),
            ],
          ),

          /// Skip button
          const onBoardingSkip(),

          /// Dot navigation SmoothPageIndicator


          /// Circular button
        ],
      ),
    );
  }
}


