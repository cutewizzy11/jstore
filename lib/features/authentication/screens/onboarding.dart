import 'package:flutter/material.dart';
import 'package:jstore/utils/constants/image_strings.dart';
import 'package:jstore/utils/constants/sizes.dart';
import 'package:jstore/utils/constants/text_strings.dart';
import 'package:jstore/utils/helpers/helper_functions.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            children: [
              Column(
                children: [
                  Image(
                    width: FHelperFunctions.screenWidth() * 0.8,
                    height: FHelperFunctions.screenHeight() * 0.6,
                    image: const AssetImage(JImages.onBoardingImage1),
                  ),
                  Text(
                    JTexts.onboardingTitle1,
                    style: Theme.of(context).textTheme.headlineMedium,
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: JSizes.spaceBtwItems),
                  Text(
                    JTexts.onboardingSubTitle1,
                    style: Theme.of(context).textTheme.bodyMedium,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ],
          ),

          /// Skip button

          /// Dot navigation SmoothPageIndicator

          /// Circular button
        ],
      ),
    );
  }
}
