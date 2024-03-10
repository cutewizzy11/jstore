import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:jstore/features/authentication/controllers/onboarding/onboarding_controller.dart';

import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/devices/device_utility.dart';

class OnBoardingNextButton extends StatelessWidget {
  const OnBoardingNextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: JSizes.defaultSpace,
      bottom: JDeviceUtils.getBottomNavigationBarHeight(),
      child: ElevatedButton(
        onPressed: () => OnBoardingController.instance.nextPage(),
        style: ElevatedButton.styleFrom(shape: const CircleBorder()),
        child: const Icon(Iconsax.arrow_right_3),
      ),
    );
  }
}
