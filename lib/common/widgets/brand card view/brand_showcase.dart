import 'package:flutter/material.dart';

import '../../../features/shop/screens/home/widgets/rounded_container.dart';
import '../../../utils/constants/colors.dart';
import '../../../utils/constants/image_strings.dart';
import '../../../utils/constants/sizes.dart';
import '../../../utils/helpers/helper_functions.dart';
import 'brand_card_view.dart';



class AppBrandShowcase extends StatelessWidget {
  const AppBrandShowcase({
    super.key, required this.images,
  });
    
  final List<String> images;

  @override
  Widget build(BuildContext context) {



    return AppRoundContainer(
    
      showBorder: true,
      borderColor: AppColors.darkerGrey,
      backgroundColor: Colors.transparent,
      padding: const EdgeInsets.all(AppSizes.md),
      margin: const EdgeInsets.only(bottom: AppSizes.spaceBtwItems),
      child: Column(
        children: [
          // Brand with Products Count
    
          const AppBrandCard(showBorder: false),
    
          // Brand top 3 Product Images
    
          Row(
            children:  images.map((image) => BrandTopProductImageWidget(image, context)).toList(),
          )
        ],
      ),
    
    );
  }
}



Widget BrandTopProductImageWidget(String image, context){
  return Expanded(
    child: AppRoundContainer(
      height: 100,
      backgroundColor: AppHelperFunctions.isDarkMode(context) ? AppColors.darkerGrey : AppColors.light,
      margin: const EdgeInsets.only(right: AppSizes.sm),
      child:  Image(image: AssetImage(image), fit: BoxFit.contain,),
  ),
  );
}