import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';
// import '../../../utils/constants/image_strings.dart';
import '../../../utils/constants/sizes.dart';
import '../../../utils/helpers/helper_functions.dart';



class AppCircularImage extends StatelessWidget {
  const AppCircularImage({
    super.key, 
    this.overlayColor, 
    this.backgroundColor, 
    required this.image, 
    this.fit = BoxFit.cover,
    this.isNetworkImage = false, 
    this.width = 56, 
    this.height = 56, 
    this.padding = AppSizes.sm,
  });


  final BoxFit? fit;
  final String image;
  final bool isNetworkImage;
  final Color? overlayColor;
  final Color? backgroundColor;
  final double width, height, padding;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: EdgeInsets.all(padding),
      decoration: BoxDecoration(
        color: backgroundColor ?? (AppHelperFunctions.isDarkMode(context) ? AppColors.black : AppColors.white),
        borderRadius: BorderRadius.circular(100),
      ),
    
      child: Image(
        fit: fit,
        image: isNetworkImage ? NetworkImage(image) : AssetImage(image) as ImageProvider,
      color: overlayColor,
      )
      


    );
  }
}