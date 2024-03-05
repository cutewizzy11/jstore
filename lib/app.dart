import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jstore/features/authentication/screens/onboarding.dart';
import 'package:jstore/utils/theme/theme.dart';

///------class to setup themes, initialize binding and any animations
class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      themeMode: ThemeMode.system,
      theme: JAppTheme.lightTheme,
      darkTheme: JAppTheme.darkTheme,
      home: const OnBoardingScreen(),
    );
  }
}
