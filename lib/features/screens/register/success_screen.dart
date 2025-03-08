// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:e_commerce_app/common/styles/spacing_styles.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:e_commerce_app/utils/constants/texte_strings.dart';
import 'package:e_commerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';


class AppEmailSuccessScreen extends StatelessWidget {
  const AppEmailSuccessScreen({super.key, required this.image, required this.title, required this.onPressed, required this.subTitle});


  final String image, title, subTitle;
  final VoidCallback onPressed;



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  SingleChildScrollView(
        child: Padding(
          padding: AppSpacingStyles.paddingWithAppBarHeight,
          child: Column(
            children: [
          
              // Success Image

              Image(image: AssetImage(image), width: AppHelperFunctions.screenWidth(),),

              // Spacing

              const SizedBox(height: AppSizes.spaceBtwSections*0.6,),

              // Title and subtitles

              Text(title, style: Theme.of(context).textTheme.headlineMedium, textAlign: TextAlign.center,),

              const SizedBox(height: AppSizes.spaceBtwItems,),

              Text(subTitle, style: Theme.of(context).textTheme.labelMedium, textAlign: TextAlign.center,),


              SizedBox(height: AppSizes.spaceBtwSections,),

              // Buttons

              SizedBox(
                width: double.infinity, 
                child: ElevatedButton(
                  onPressed: onPressed, 
                  child: Text(AppTexts.tContinue)
                  ),
                  )
          
            ],
          ),
        ),
      ),
    );
  }
}