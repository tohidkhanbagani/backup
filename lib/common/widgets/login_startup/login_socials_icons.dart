import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:e_commerce_app/utils/constants/image_strings.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class AppSocialButtonsIcons extends StatelessWidget {
  const AppSocialButtonsIcons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
    
      mainAxisAlignment: MainAxisAlignment.center,
    
      children: [
    
    
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: AppColors.grey,),
            borderRadius: BorderRadius.circular(100)
          ),
          child: IconButton(
          onPressed: (){}, 
          icon: const Image(
          image: AssetImage(AppImages.google),
          height: AppSizes.iconMd,
          width: AppSizes.iconMd,
          )
          ),
        ),
    
        const SizedBox(width: AppSizes.spaceBtwItems,),
    
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: AppColors.grey,),
            borderRadius: BorderRadius.circular(100)
          ),
          child: IconButton(
          onPressed: (){}, 
          icon: const Image(
          image: AssetImage(AppImages.facebook),
          height: AppSizes.iconMd,
          width: AppSizes.iconMd,
          )
          ),
        ),
    
        const SizedBox(width: AppSizes.spaceBtwItems,),
        
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: AppColors.grey,),
            borderRadius: BorderRadius.circular(100)
          ),
          child: IconButton(
          onPressed: (){}, 
          icon: const Image(
          image: AssetImage(AppImages.google),
          height: AppSizes.iconMd,
          width: AppSizes.iconMd,
          )
          ),
        ),
    
        const SizedBox(width: AppSizes.spaceBtwItems,)
    
    
          ],
    );
  }
}
