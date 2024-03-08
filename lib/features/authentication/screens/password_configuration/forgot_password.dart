import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:jstore/features/authentication/screens/password_configuration/reset_password.dart';
import 'package:jstore/utils/constants/sizes.dart';
import 'package:jstore/utils/constants/text_strings.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(JSizes.defaultSpace),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            ///Headings
            Text(JTexts.forgotPasswordTitle,
                style: Theme
                    .of(context)
                    .textTheme
                    .headlineMedium),
            const SizedBox(height: JSizes.spaceBtwItems),
            Text(JTexts.forgotPasswordSubTitle,
                style: Theme
                    .of(context)
                    .textTheme
                    .labelMedium),
            const SizedBox(height: JSizes.spaceBtwSections * 2),

            ///Text Field
            TextFormField(
              decoration: const InputDecoration(
                  labelText: JTexts.emailFieldLabel,
                  prefixIcon: Icon(Iconsax.direct_right)),
            ),
            const SizedBox(height: JSizes.spaceBtwSections * 2),

            ///Submit Button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: () => Get.to(() => const ResetPassword()),
                  child: const Text(JTexts.submit)),
            ),
          ],
        ),
      ),
    );
  }
}
