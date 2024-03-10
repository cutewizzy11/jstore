import 'package:flutter/material.dart';
import 'package:jstore/features/authentication/controllers/onboarding/onboarding_controller.dart';

import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/devices/device_utility.dart';

class OnBoardingSkip extends StatelessWidget {
  const OnBoardingSkip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: JDeviceUtils.getAppBarHeight(),
      right: JSizes.defaultSpace,
      child: TextButton(onPressed: () => OnBoardingController.instance.skipPage(), child: const Text('Skip')),
    );
  }
}