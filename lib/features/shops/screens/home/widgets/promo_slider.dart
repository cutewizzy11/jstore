import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jstore/features/shops/controllers/home_controller.dart';
import 'package:jstore/utils/constants/colors.dart';

import '../../../../../common/widgets/custom_shapes/containers/circular_container.dart';
import '../../../../../common/widgets/images/j_rounded_image.dart';
import '../../../../../utils/constants/sizes.dart';

class JPromoSlider extends StatelessWidget {
  const JPromoSlider({
    super.key, required this.banners,
  });

  final List<String> banners;

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());
    return Column(
      children: [
        CarouselSlider(
          options: CarouselOptions(
              viewportFraction: 1,
              onPageChanged: (index, _) =>
                  controller.updatePageIndicator(index)),
          items: banners.map((url) => JRoundedImage(imageUrl: url)).toList(),
        ),
        const SizedBox(height: JSizes.spaceBtwItems),
        Center(
          child: Obx(
            () => Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                for (int i = 0; i < banners.length; i++)
                  JCircularContainer(
                      width: 20,
                      height: 5,
                      margin: const EdgeInsets.only(right: 10),
                      backgroundColor: controller.carousalCurrentIndex.value == i
                          ? JColors.primary
                          : JColors.grey),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
