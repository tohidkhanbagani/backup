// ignore_for_file: prefer_const_constructors

import 'package:e_commerce_app/features/screens/onboarding/onboarding.dart';
import 'package:e_commerce_app/utils/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';



class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      
      debugShowCheckedModeBanner: false,
      home: AppOnboardingScreen(),
      themeMode: ThemeMode.system,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      
    );
  }
}