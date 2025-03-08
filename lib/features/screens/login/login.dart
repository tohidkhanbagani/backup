// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:e_commerce_app/common/styles/spacing_styles.dart';
import 'package:e_commerce_app/common/widgets/login_startup/form_divider.dart';
import 'package:e_commerce_app/common/widgets/login_startup/login_socials_icons.dart';
import 'package:e_commerce_app/features/screens/login/login_form.dart';
import 'package:e_commerce_app/features/screens/login/login_header.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:e_commerce_app/utils/constants/texte_strings.dart';
import 'package:flutter/material.dart';


class AppLogInScreen extends StatelessWidget {
  const AppLogInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = Theme.of(context).brightness == Brightness.dark;
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: AppSpacingStyles.paddingWithAppBarHeight,
          child: Column( // Main Column Starting
          
          children: [
            

              // Logo, Title, Sub-Title
               LoginHeader(dark: dark),

              /// form
              
              LoginForm(),

              /// divider
               
              LoginDivider(dividerText: AppTexts.orSignInWith),

                // space after the divider 

              const SizedBox(height: AppSizes.spaceBtwSections,),

              // Footer
              AppSocialButtonsIcons(),
]),
),
),
);


  }
}






