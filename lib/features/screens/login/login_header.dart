import 'package:e_commerce_app/utils/constants/image_strings.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:e_commerce_app/utils/constants/texte_strings.dart';
import 'package:flutter/material.dart';



class LoginHeader extends StatelessWidget {
  const LoginHeader({
    super.key,
    required this.dark,
  });

  final bool dark;

  @override
  Widget build(BuildContext context) {

    final dark = Theme.of(context).brightness == Brightness.dark;
    return Column
    ( 
      // 1st Column Starting
      crossAxisAlignment: CrossAxisAlignment.center,
      children: 
      [
        // Logo Image
        Image( height: 150, image: AssetImage(dark ? AppImages.lightAppLogo : AppImages.darkAppLogo)),
          
        // Title Headline
        Text( AppTexts.loginTitle, style: Theme.of(context).textTheme.headlineMedium,),
    
        // Sized Box Divider
        SizedBox(height: AppSizes.sm,),
    
        // Subtitle Headline  
        Text(AppTexts.loginSubTitle,style: Theme.of(context).textTheme.bodyMedium,),
    
        
        // Sized Box Divider
        SizedBox(height: AppSizes.sm,),
    
      ],
    
                // 1st Column Ending
      );
  }
}