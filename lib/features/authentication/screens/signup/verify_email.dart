import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jstore/common/widgets/success_screen/success_screen.dart';
import 'package:jstore/features/authentication/screens/login/login.dart';
import 'package:jstore/utils/constants/image_strings.dart';
import 'package:jstore/utils/constants/sizes.dart';
import 'package:jstore/utils/constants/text_strings.dart';
import 'package:jstore/utils/helpers/helper_functions.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
              onPressed: () => Get.offAll(() => const LoginScreen()),
              icon: const Icon(CupertinoIcons.clear))
        ],
      ),
      body: SingleChildScrollView(
        //Padding to give default equal space on all sides in all screen
        child: Padding(
            padding: const EdgeInsets.all(JSizes.defaultSpace),
            child: Column(
              children: [
                /// Image
                Image(
                  image: const AssetImage(JImages.animationImage1),
                  width: JHelperFunctions.screenWidth() * 0.6,
                ),
                const SizedBox(height: JSizes.spaceBtwSections),

                /// Title & SubTitle
                Text(JTexts.confirmEmail,
                    style: Theme.of(context).textTheme.headlineMedium,
                    textAlign: TextAlign.center),
                const SizedBox(height: JSizes.spaceBtwItems),
                Text('brasspaul.1@gmail.com',
                    style: Theme.of(context).textTheme.labelLarge,
                    textAlign: TextAlign.center),
                const SizedBox(height: JSizes.spaceBtwItems),
                Text(JTexts.confirmEmailSubTitle,
                    style: Theme.of(context).textTheme.labelLarge,
                    textAlign: TextAlign.center),
                const SizedBox(height: JSizes.spaceBtwSections),

                /// Buttons
                SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                        onPressed: () => Get.to(
                              () => SuccessScreen(
                                  image: JImages.animationImage2,
                                  title: JTexts.yourAccountCreatedTitle,
                                  subTitle: JTexts.yourAccountCreatedSubTitle,
                                  onPressed: () => Get.to(() => const LoginScreen())),
                            ),
                        child: const Text(JTexts.jContinue))),
                const SizedBox(height: JSizes.spaceBtwItems),
                SizedBox(
                    width: double.infinity,
                    child: TextButton(
                        onPressed: () {},
                        child: const Text(JTexts.resendEmail))),
              ],
            )),
      ),
    );
  }
}
