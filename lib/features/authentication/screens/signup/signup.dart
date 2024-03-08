import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jstore/common/widgets/login_signup/form_divider.dart';
import 'package:jstore/common/widgets/login_signup/social_buttons.dart';
import 'package:jstore/features/authentication/screens/signup/widgets/signup_form.dart';
import 'package:jstore/utils/constants/sizes.dart';
import 'package:jstore/utils/constants/text_strings.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(JSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /// Title
              Text(JTexts.signUpTitle,
                  style: Theme.of(context).textTheme.headlineMedium),
              const SizedBox(height: JSizes.spaceBtwSections),

              /// Form
              const JSignupForm(),
              const SizedBox(height: JSizes.spaceBtwSections),
              
              /// Divider
              JFormDivider(dividerText: JTexts.orSignUpWith.capitalize!),
              const SizedBox(height: JSizes.spaceBtwSections),

              /// Social buttons
              const JSocialButtons(),
            ],
          ),
        ),
      ),
    );
  }
}
