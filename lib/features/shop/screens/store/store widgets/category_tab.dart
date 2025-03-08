import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

import '../../../../../common/widgets/brand card view/brand_showcase.dart';
import '../../../../../utils/constants/image_strings.dart';



class AppCategoryTab extends StatelessWidget {
  const AppCategoryTab({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
    padding: EdgeInsets.all(AppSizes.defaultSpace),
    child: Column(
      children: [
                      // Brands
        AppBrandShowcase(images: [AppImages.productImage1,AppImages.productImage2,AppImages.productImage3],)
      
                ],
      ), 
    );
  }
}