// import 'dart:ffi';

import 'package:e_commerce_app/common/widgets/images/rounded_images.dart';
import 'package:e_commerce_app/features/shop/screens/home/widgets/rounded_container.dart';
import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:e_commerce_app/utils/constants/image_strings.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:e_commerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../styles/shadowstyles.dart';
import '../../icons/circular_icon.dart';
import '../../texts/brand_title_with_verification.dart';
import '../../texts/product_price_text.dart';
import '../../texts/product_title_text.dart';


class AppProductCardVertical extends StatelessWidget {
  const AppProductCardVertical({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = AppHelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: (){},
      child: Container(
        width: double.infinity,
        
        padding: const EdgeInsets.all(1),
        decoration: BoxDecoration(
          boxShadow: [AppShadowStyle.verticalProductShadow],
          borderRadius: BorderRadius.circular(AppSizes.productImageRadius),
          color: dark ? AppColors.darkerGrey : AppColors.white
        ),
        child: Column(
          children: [
      
      
            // thumbnail
            AppRoundContainer(
              height: 180,
              padding: const EdgeInsets.all(AppSizes.sm),
              
              backgroundColor: dark?  AppColors.dark : AppColors.light,
      
              child: Stack(
                children: [
                  // Thumbnail image
                  const AppRoundImage(imageUrl: AppImages.productImage1, applyImageRadius: true, width: double.infinity),

                  // Sale tag
                  Positioned(
                    top: 12,
                    child: AppRoundContainer(
                    backgroundColor: AppColors.secondary.withOpacity(0.8),
                    radius: AppSizes.sm,
                    padding: const EdgeInsets.symmetric(horizontal: AppSizes.sm,vertical: AppSizes.xs),
                    child: Text('25%', style: Theme.of(context).textTheme.labelLarge!.apply(color: AppColors.black),),
                    ),
                  ),
      
                  // Favourites Icon Button
                  const Positioned(
                    top: 0,
                    right: 0,
                    child: AppCircularIcon(icon: Iconsax.heart5,color: Colors.red, height: 40, width: 40,),
                    )
                ],
              ),
              ),
      
              // const SizedBox(height: AppSizes.spaceBtwItems/2),
      
      
            // Details
      
            const Padding(padding: EdgeInsets.only(left: AppSizes.sm),
            
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AppProductTitleText(
                  title: 'Green Nike Air Shoes', 
                  smallSize: true,
                  ),

                  
                  SizedBox(height: AppSizes.spaceBtwItems/2),
                  AppBrandTitleWithVerfication(title: 'Nike',),
                    
                    

                ],
              ),
            ),
            

                    // Todo : Add Spacer() here to keep the height of each box same in case 1 or 2 lines of headings
                    const Spacer(),

                    // price row
                    Padding(
                      padding: const EdgeInsets.only(left: AppSizes.sm),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                      
                      
                          
                            
                          const AppPrductPrices(price: '35.0'),
                      
                          Container(
                            decoration: BoxDecoration(
                              color: dark ? AppColors.white : AppColors.dark,
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(AppSizes.cardRadiusMd),
                                bottomRight: Radius.circular(AppSizes.productImageRadius),
                              )
                            ),
                            child: SizedBox(width: AppSizes.iconLg*1.2,height: AppSizes.iconLg*1.2,child: IconButton(onPressed: (){}, icon: Icon(Iconsax.add,color: dark ? AppColors.dark : AppColors.white,))),
                          )
                        ],
                      ),
                    )  
          ],
        ),
      ),
    );
  }
}






