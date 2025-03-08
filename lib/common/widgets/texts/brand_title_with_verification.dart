import 'package:e_commerce_app/common/widgets/texts/brand_title_text.dart';
// import 'package:e_commerce_app/common/widgets/texts/product_title_text.dart';
import 'package:e_commerce_app/utils/constants/enums.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/sizes.dart';



class AppBrandTitleWithVerfication extends StatelessWidget {
  const AppBrandTitleWithVerfication({
    super.key, 
    this.textColor, 
    this.iconColor = AppColors.primary,
    required this.title,
    this.maxLine = 1,
    this.brandTextSizes = TextSizes.small, 
    this.textAlign = TextAlign.center,
  });


  final String title;
  final int maxLine;
  final Color? textColor, iconColor;
  final TextSizes brandTextSizes;
  final TextAlign? textAlign;

  @override
  Widget build(BuildContext context) {
    return Row(
      // mainAxisSize: MainAxisSize.min,
      children: [

        AppBrandTitleText(
          title: title,
          color: textColor,
          maxLines: maxLine,
          textAlign: textAlign,
          brandTextSize: brandTextSizes,
          ),
          
      const SizedBox(width :AppSizes.xs),
          
      const Icon(Iconsax.verify5, color: AppColors.primary, size: AppSizes.iconXs,)
      ],
      );
  }
}