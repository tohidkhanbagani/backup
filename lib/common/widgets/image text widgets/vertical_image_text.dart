import 'package:flutter/material.dart';
import '../../../utils/constants/colors.dart';
import '../../../utils/constants/sizes.dart';
import '../../../utils/helpers/helper_functions.dart';





class AppVerticalImageTextAndContainer extends StatelessWidget {
  const AppVerticalImageTextAndContainer({
    super.key, 
    required this.categoryImage, 
    required this.title, 
    this.textColor = AppColors.white, 
    this.backgroundColor=AppColors.white, 
    this.onTap,
  });

  final String categoryImage, title;
  final Color textColor;
  final Color? backgroundColor;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(right: AppSizes.spaceBtwItems),
        child: Column(
          children: [
            // Circular Icon
            Container(
              width: 56,
              height: 56,
              padding: const EdgeInsets.all(AppSizes.sm),
              decoration: BoxDecoration(
                color: backgroundColor?? (AppHelperFunctions.isDarkMode(context)?AppColors.black:AppColors.white),
                borderRadius: BorderRadius.circular(100)
              ),
              child: Center(child: Image(image: AssetImage(categoryImage), fit: BoxFit.cover, color: AppColors.dark,)),
            ),
            SizedBox(height: AppSizes.spaceBtwItems/2),
        
            SizedBox(width:55, child:  Text(title, style: Theme.of(context).textTheme.labelMedium!.apply(color: textColor), maxLines: 1, overflow: TextOverflow.ellipsis,))
          ],
        ),
      ),
    );
  }
}