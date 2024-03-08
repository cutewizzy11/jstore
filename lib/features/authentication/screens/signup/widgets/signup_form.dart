import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:jstore/features/authentication/screens/signup/verify_email.dart';
import 'package:jstore/features/authentication/screens/signup/widgets/terms_condition_checkbox.dart';

import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/text_strings.dart';

class JSignupForm extends StatelessWidget {
  const JSignupForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          /// first name & last name
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  expands: false,
                  decoration: const InputDecoration(
                    labelText: JTexts.firstNameFieldLabel,
                    prefixIcon: Icon(Iconsax.user),
                  ),
                ),
              ),
              const SizedBox(width: JSizes.spaceBtwInputFields),
              Expanded(
                child: TextFormField(
                  expands: false,
                  decoration: const InputDecoration(
                    labelText: JTexts.lastNameFieldLabel,
                    prefixIcon: Icon(Iconsax.user),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: JSizes.spaceBtwInputFields),

          /// username
          TextFormField(
            expands: false,
            decoration: const InputDecoration(
              labelText: JTexts.userNameFieldLabel,
              prefixIcon: Icon(Iconsax.user_edit),
            ),
          ),
          const SizedBox(height: JSizes.spaceBtwInputFields),

          /// email
          TextFormField(
            expands: false,
            decoration: const InputDecoration(
              labelText: JTexts.emailFieldLabel,
              prefixIcon: Icon(Iconsax.direct),
            ),
          ),
          const SizedBox(height: JSizes.spaceBtwInputFields),

          /// phone number
          TextFormField(
            decoration: const InputDecoration(
              labelText: JTexts.phoneNumberFieldLabel,
              prefixIcon: Icon(Iconsax.call),
            ),
          ),
          const SizedBox(height: JSizes.spaceBtwInputFields),

          /// password
          TextFormField(
            obscureText: true,
            decoration: const InputDecoration(
              labelText: JTexts.passwordFieldLabel,
              prefixIcon: Icon(Iconsax.password_check),
              suffixIcon: Icon(Iconsax.eye_slash),
            ),
          ),
          const SizedBox(height: JSizes.spaceBtwInputFields),

          /// terms and condition checkbox
          const JTermsAndConditionCheckbox(),
          const SizedBox(height: JSizes.spaceBtwSections),

          /// Signup button
          SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () => Get.to(() => const VerifyEmailScreen()),
                child: const Text(JTexts.createAccountText),
              ))
        ],
      ),
    );
  }
}
