// ignore_for_file: prefer_const_constructors

import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:e_commerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';


class AppCartCounterWidget extends StatelessWidget {
  const AppCartCounterWidget({
    super.key,
    required this.onPressed,
    this.iconColor
  });

final VoidCallback onPressed;
final Color? iconColor;


  @override
  Widget build(BuildContext context) {
    final dark = AppHelperFunctions.isDarkMode(context);
    return Stack(
      children: [
    
        IconButton(onPressed: onPressed, icon: Icon(Iconsax.shopping_bag, color: iconColor,)),
    
        Positioned(
          
          right: 6,
          top: 4,
          child: Container(
            width: 20,
            height: 20,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              color: dark ? AppColors.white: AppColors.black,
            ),
            child: Center(child: Text('100', style: Theme.of(context).textTheme.labelLarge!.apply(color: dark ? AppColors.dark: AppColors.white, fontSizeFactor: 0.8),)),
          ),
        )
    
      ],
    );
  }
}




