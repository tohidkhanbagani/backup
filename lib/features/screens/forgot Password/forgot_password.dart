// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:e_commerce_app/common/styles/spacing_styles.dart';
import 'package:e_commerce_app/features/screens/forgot%20Password/reset_password.dart';
import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:e_commerce_app/utils/constants/texte_strings.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:get/get.dart';


class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = Theme.of(context).brightness == Brightness.dark;

    final _textController = TextEditingController();
    String userEmailInput = 'hello';

    debugPrint(userEmailInput);
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          
          padding: AppSpacingStyles.paddingWithAppBarHeight,
          
        child: Column(

          crossAxisAlignment: CrossAxisAlignment.start,

          children: [

            Text(AppTexts.forgetPasswordTitle, style: Theme.of(context).textTheme.headlineMedium,),

            // Spacing

            const SizedBox(height: AppSizes.spaceBtwItems,),


            // Subtitle

            Text(AppTexts.forgetPasswordSubTitle, style: Theme.of(context).textTheme.labelMedium,),


            // Spacing

            const SizedBox(height: AppSizes.spaceBtwSections* 2,),

            // Input Field

            TextFormField(
              decoration: InputDecoration(
                prefixIcon: Icon(Iconsax.direct_right),
                suffixIcon: IconButton(
                  onPressed: (){_textController.clear();},
                  icon: Icon(Icons.clear_rounded)
                  ),
                  label: Text(AppTexts.email, style: TextStyle(color: dark? AppColors.white:AppColors.black),)
                  ),
              controller: _textController,
            ),

            // Spacing

            const SizedBox(height: AppSizes.spaceBtwSections,), 

            // Submit Button

            SizedBox(
              width: double.infinity, 
              child: ElevatedButton(onPressed: (){
                // Updates the useremailinput with the current value of the text controller
                
                userEmailInput = _textController.text;

                // navigation to tother screen

                Get.off(()=>AppResetPasswordScreen(inheritedUserEmailInput: userEmailInput,));
                              
              }, 
              child: Text(AppTexts.submit),
              ),
              )



            
          ],


        ),  
          
          
        ),
      ),
    );
  }
}