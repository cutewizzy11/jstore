import 'package:flutter/material.dart';
import 'package:jstore/features/shops/screens/home/widgets/home_appbar.dart';
import 'package:jstore/features/shops/screens/home/widgets/home_categories.dart';
import 'package:jstore/features/shops/screens/home/widgets/promo_slider.dart';
import 'package:jstore/utils/constants/colors.dart';
import 'package:jstore/utils/constants/image_strings.dart';
import 'package:jstore/utils/constants/sizes.dart';

import '../../../../common/widgets/custom_shapes/containers/primary_header_container.dart';
import '../../../../common/widgets/custom_shapes/containers/search_container.dart';
import '../../../../common/widgets/texts/section_heading.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// Header
            JPrimaryHeaderContainer(
              child: Column(
                children: [
                  /// -- Appbar
                  JHomeAppBar(),
                  SizedBox(height: JSizes.spaceBtwSections),

                  /// -- Searchbar
                  JSearchContainer(text: 'Search in store'),
                  SizedBox(height: JSizes.spaceBtwSections),

                  /// --Categories
                  Padding(
                    padding: EdgeInsets.only(left: JSizes.defaultSpace),
                    child: Column(
                      children: [
                        /// -- Heading
                        JSectionHeading(
                            title: 'Popular Categories',
                            showActionButton: false,
                            textColor: JColors.white),
                        SizedBox(height: JSizes.spaceBtwItems),

                        /// -- Categories
                        JHomeCategories(),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            /// Body
            Padding(
              padding: EdgeInsets.all(JSizes.defaultSpace),
              child: JPromoSlider(banners: [JImages.bannerImage1, JImages.bannerImage3, JImages.bannerImage2],),
            ),
          ],
        ),
      ),
    );
  }
}

