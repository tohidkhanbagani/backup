import 'package:e_commerce_app/utils/constants/sizes.dart';

import 'package:e_commerce_app/utils/helpers/helper_functions.dart';

import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';








class AppCircularIcon extends StatelessWidget {
  const AppCircularIcon({
    super.key,
    this.height, 
    this.width, 
    this.size = AppSizes.lg, 
    required this.icon, 
    this.color, 
    this.backgroundColor, 
    this.onPressed,
  });

  final double? height, width, size;
  final IconData icon;
  final Color? color;
  final Color? backgroundColor;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width:  width,

      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: backgroundColor != null 
        ? backgroundColor!
        :AppHelperFunctions.isDarkMode(context) 
        ? AppColors.dark.withOpacity(0.9): 
          AppColors.light.withOpacity(0.9),
    
      ),
      child: IconButton(
        onPressed: onPressed,
        icon: Icon(
          icon,
          color: color,
          size: size,
        )
      ),
    );
  }
}