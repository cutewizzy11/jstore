import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jstore/common/styles/spacing_styles.dart';
import 'package:jstore/features/authentication/screens/login/widgets/login_form.dart';
import 'package:jstore/features/authentication/screens/login/widgets/login_header.dart';
import 'package:jstore/utils/constants/sizes.dart';
import 'package:jstore/utils/constants/text_strings.dart';

import '../../../../common/widgets/login_signup/form_divider.dart';
import '../../../../common/widgets/login_signup/social_buttons.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: JSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              /// logo, title, & subtitle
              const JLoginHeader(),

              /// Form
              const JLoginForm(),

              /// Divider
              JFormDivider(dividerText: JTexts.orSignInWith.capitalize!),
              const SizedBox(height: JSizes.spaceBtwSections),

              /// Footer
              const JSocialButtons()
            ],
          ),
        ),
      ),
    );
  }
}



