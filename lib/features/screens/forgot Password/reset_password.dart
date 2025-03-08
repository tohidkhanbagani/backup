// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:e_commerce_app/features/screens/login/login.dart';
import 'package:e_commerce_app/utils/constants/image_strings.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:e_commerce_app/utils/constants/texte_strings.dart';
import 'package:e_commerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

class AppResetPasswordScreen extends StatelessWidget {
  const AppResetPasswordScreen({super.key, required this.inheritedUserEmailInput});

  final String inheritedUserEmailInput;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(),

      body: SingleChildScrollView(

        child: Padding(
          padding: const EdgeInsets.all(AppSizes.defaultSpace),
          child: Column(
          
          
          
            children: [
          
          
              Image(
                image: AssetImage(AppImages.deliveredEmailIllustration),
                width: AppHelperFunctions.screenWidth()*0.60
                ),
          
            // Spacing
          
            const SizedBox(height: AppSizes.spaceBtwSections,),
          
          
            // Email
          
            Text(inheritedUserEmailInput, style: Theme.of(context).textTheme.labelMedium,),
          
          
            // Spacing
          
            const SizedBox(height: AppSizes.spaceBtwItems,),
          
            // title
          
            Text(AppTexts.changeYourPasswordTitle, style: Theme.of(context).textTheme.headlineMedium,),
          
          
            // Spacing
          
            const SizedBox(height: AppSizes.spaceBtwItems,),
          
          
            // Subtitle
          
            Text(AppTexts.changeYourPasswordSubTitle, style: Theme.of(context).textTheme.labelMedium,textAlign: TextAlign.center,),
          
            // Spacing
          
            const SizedBox(height: AppSizes.spaceBtwSections,),
          
            // Confirm button
          
            SizedBox(
                width: double.infinity, 
                child: ElevatedButton(onPressed: ()=>Get.offAll(()=>AppLogInScreen()), 
                child: Text(AppTexts.tContinue),
                ),
                ),
            // Spacing
          
            const SizedBox(height: AppSizes.spaceBtwItems,),
          
            // Confirm button
          
            SizedBox(
                width: double.infinity, 
                child: TextButton(onPressed: (){}, 
                child: Text(AppTexts.resendEmail),
                ),
                )
          
          
          
            ],
          
          
          
          
          
          
          
          
          
          ),
        ),






      ),





    );
  }
}