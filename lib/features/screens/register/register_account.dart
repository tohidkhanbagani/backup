// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:e_commerce_app/common/styles/spacing_styles.dart';
import 'package:e_commerce_app/common/widgets/login_startup/form_divider.dart';
import 'package:e_commerce_app/common/widgets/login_startup/login_socials_icons.dart';
import 'package:e_commerce_app/common/widgets/sighnup/widgets/sighnup_form.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:e_commerce_app/utils/constants/texte_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';







class RegisterAccount extends StatelessWidget {
  const RegisterAccount({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(),

      body: SingleChildScrollView(

        child: Padding(

          padding: AppSpacingStyles.paddingWithAppBarHeight,

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,

            children: [

              // Sighnup Title
              
              Text(AppTexts.signupTitle, style: Theme.of(context).textTheme.headlineMedium,),

              // Space between Sections

              const SizedBox(height: AppSizes.spaceBtwSections,),

              // Form

              AppSighUpForm(),

              // Space

              const SizedBox(height: AppSizes.defaultSpace,),

                // Divider

                LoginDivider(dividerText: AppTexts.orSignUpWith.capitalize), 

                // space 

                const SizedBox(height: AppSizes.defaultSpace,),


                // social buttons

                AppSocialButtonsIcons()






            ],


          ), // Body Widget's Child's Child Which is the Main Column



        ),// Scaffold's Body widget's Child



      ),// scaffolds body widget


    );
  }
}

