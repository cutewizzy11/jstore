import 'package:flutter/material.dart';

import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/text_strings.dart';
import '../../../../../utils/helpers/helper_functions.dart';

class JTermsAndConditionCheckbox extends StatelessWidget {
  const JTermsAndConditionCheckbox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = JHelperFunctions.isDarkMode(context);
    return Row(
      children: [
        SizedBox(
            width: 24,
            child:
            Checkbox(value: true, onChanged: (value) {})),
        const SizedBox(width: JSizes.spaceBtwItems),
        Text.rich(
          TextSpan(
            children: [
              TextSpan(
                  text: '${JTexts.isAgreeTo} ',
                  style: Theme.of(context).textTheme.bodySmall),
              TextSpan(
                  text: '${JTexts.privacyPolicy} ',
                  style: Theme.of(context)
                      .textTheme
                      .bodyMedium!
                      .apply(
                    color: dark
                        ? FColors.white
                        : FColors.primary,
                    decoration: TextDecoration.underline,
                    decorationColor: dark
                        ? FColors.white
                        : FColors.primary,
                  )),
              TextSpan(
                  text: '${JTexts.and} ',
                  style: Theme.of(context).textTheme.bodySmall),
              TextSpan(
                  text: JTexts.termsOfUse,
                  style: Theme.of(context)
                      .textTheme
                      .bodyMedium!
                      .apply(
                    color: dark
                        ? FColors.white
                        : FColors.primary,
                    decoration: TextDecoration.underline,
                    decorationColor: dark
                        ? FColors.white
                        : FColors.primary,
                  )),
            ],
          ),
        ),
      ],
    );
  }
}