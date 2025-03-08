// ignore_for_file: prefer_const_constructors

import 'package:e_commerce_app/common/styles/spacing_styles.dart';
import 'package:e_commerce_app/features/screens/login/login.dart';
import 'package:e_commerce_app/features/screens/register/success_screen.dart';
import 'package:e_commerce_app/utils/constants/image_strings.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:e_commerce_app/utils/constants/texte_strings.dart';
import 'package:e_commerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';



class AppEmailVerification extends StatelessWidget {
  const AppEmailVerification({super.key});


  @override
  Widget build(BuildContext context) {
  // final NextDestination = (){
  //   WidgetsBinding.instance.addPostFrameCallback((_){
      
  //     Navigator.pushAndRemoveUntil<dynamic>(
  //       context,
  //       MaterialPageRoute<dynamic>(
  //         builder: (BuildContext context)=>AppLogInScreen(),
  //         ),
  //         (Route<dynamic> Route)=> false
  //       );
  //   });
  // };
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(onPressed: ()=> Get.offAll(()=> AppLogInScreen()), icon: Icon(CupertinoIcons.clear))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: AppSpacingStyles.paddingWithAppBarHeight,
          child: Column(
            children: [

              /// Image
              
              Image(image: AssetImage(AppImages.deliveredEmailIllustration),
              width: AppHelperFunctions.screenWidth()*0.6,
              ),

              // spacing

              const SizedBox(height: AppSizes.defaultSpace,),
              
              /// Title and subtitle
               
              Text(AppTexts.confirmEmail, style: Theme.of(context).textTheme.headlineMedium, textAlign: TextAlign.center,),


            // spacing

              const SizedBox(height: AppSizes.spaceBtwItems,),

            /// Email 
            
            Text('TohidBagani@gmail.com', style: Theme.of(context).textTheme.labelLarge, textAlign: TextAlign.center,),

              // spacing

              const SizedBox(height: AppSizes.spaceBtwItems,),

            /// Subtitles
            
            Text(AppTexts.confirmEmailSubTitle, style: Theme.of(context).textTheme.labelMedium, textAlign: TextAlign.center,),

              // spacing

              const SizedBox(height: AppSizes.spaceBtwItems,),

              /// Buttons
              
              SizedBox(
              width: double.infinity,
              child: ElevatedButton(onPressed: ()=> Get.to(()=> AppEmailSuccessScreen(
                image: AppImages.staticSuccessIllustration,
                subTitle: AppTexts.yourAccountCreatedSubTitle,
                title: AppTexts.yourAccountCreatedTitle,
                onPressed: ()=> Get.off(()=>AppLogInScreen()),
                )
                ), 
                child: Text(AppTexts.tContinue)
                )
                ),

              // Spacing


              const SizedBox(height: AppSizes.spaceBtwItems,),


              SizedBox(width: double.infinity,child: TextButton(onPressed: (){}, child: Text(AppTexts.resendEmail))),






            ],
          ),
        ),
      )
    );
  }
}