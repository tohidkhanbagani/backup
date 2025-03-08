import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:e_commerce_app/utils/device/device_utility.dart';
import 'package:e_commerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';


class AppHomeScreenSearchBarWidget extends StatelessWidget {
  const AppHomeScreenSearchBarWidget({
    super.key,
    required this.hintText,
    this.icon = Iconsax.search_normal,
    this.showBackground=true,
    this.showBorder=false, 
    this.padding = const EdgeInsets.symmetric(horizontal: AppSizes.defaultSpace), 
    // this.ontap

  });

  final String hintText;
  final IconData? icon;
  final bool showBackground;
  final bool showBorder;
  final EdgeInsetsGeometry padding;
  // final VoidCallback? ontap;


  @override
  Widget build(BuildContext context) {
    final dark = AppHelperFunctions.isDarkMode(context);
    return Padding(
      padding: padding,

      child: Container(

        width: AppDeviceUtils.getScreenWidth(context),

        // padding: EdgeInsets.all(AppSizes.md),

        decoration: BoxDecoration(

          color: showBackground ? dark ? AppColors.dark : AppColors.white : Colors.transparent,

          borderRadius: BorderRadius.circular(AppSizes.cardRadiusLg),

          border: showBorder ? Border.all(color: AppColors.grey) : null
        ),


        
        child: TextFormField( 
          decoration: InputDecoration(
            prefixIcon: Icon(icon), 
            hintText: hintText,
            hintStyle: TextStyle(color: Colors.grey)
            ),
            ),




      ),
    );
  }
}