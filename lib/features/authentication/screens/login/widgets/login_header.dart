import 'package:flutter/material.dart';
import 'package:jstore/utils/helpers/helper_functions.dart';

import '../../../../../utils/constants/image_strings.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/text_strings.dart';

class JLoginHeader extends StatelessWidget {
  const JLoginHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = JHelperFunctions.isDarkMode(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image(
          height: 150,
          image: AssetImage(
              dark ? JImages.lightAppLogo : JImages.darkAppLogo),
        ),
        Text(JTexts.loginTitle,
            style: Theme.of(context).textTheme.headlineMedium),
        const SizedBox(height: JSizes.sm),
        Text(JTexts.loginSubTitle,
            style: Theme.of(context).textTheme.headlineMedium),
      ],
    );
  }
}