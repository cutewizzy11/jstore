import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:jstore/features/authentication/screens/password_configuration/forgot_password.dart';
import 'package:jstore/features/authentication/screens/signup/signup.dart';
import 'package:jstore/navigation_menu.dart';

import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/text_strings.dart';

class JLoginForm extends StatelessWidget {
  const JLoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding: const EdgeInsets.symmetric(
            vertical: JSizes.spaceBtwSections),
        child: Column(
          children: [
            /// email
            TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Iconsax.direct_right),
                labelText: JTexts.emailFieldLabel,
              ),
            ),
            const SizedBox(height: JSizes.spaceBtwInputFields),

            /// password
            TextFormField(
              decoration: const InputDecoration(
                  prefixIcon: Icon(Iconsax.password_check),
                  labelText: JTexts.passwordFieldLabel,
                  suffixIcon: Icon(Iconsax.eye_slash)),
            ),
            const SizedBox(height: JSizes.spaceBtwInputFields / 2),

            /// Remember me & forgotten password
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                /// Remember me
                Row(
                  children: [
                    Checkbox(value: true, onChanged: (value) {}),
                    const Text(JTexts.rememberMe),
                  ],
                ),

                /// Forget password
                TextButton(
                  onPressed: () => Get.to(() => const ForgotPassword()),
                  child: const Text(JTexts.forgotPasswordButtonText),
                ),
              ],
            ),
            const SizedBox(height: JSizes.spaceBtwSections),

            /// Sign in button
            SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () => Get.to(() => const NavigationMenu()),
                    child: const Text(JTexts.signInButtonText))),
            const SizedBox(height: JSizes.spaceBtwItems),

            /// Create account button
            SizedBox(
                width: double.infinity,
                child: OutlinedButton(
                    onPressed: () => Get.to(() => const SignupScreen()),
                    child: const Text(JTexts.createAccountText))),
          ],
        ),
      ),
    );
  }
}