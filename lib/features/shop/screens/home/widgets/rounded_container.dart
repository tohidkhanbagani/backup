import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';



class AppRoundContainer extends StatelessWidget {
  const AppRoundContainer({
    super.key, 
    this.child,
    this.width, 
    this.height, 
    this.margin,
    this.padding, 
    this.showBorder = false,
    this.radius = AppSizes.cardRadiusLg,
    this.backgroundColor = AppColors.white, 
    this.borderColor = AppColors.borderPrimary, 
    });

  final double? width;
  final double? height; 
  final double radius;
  final Widget? child;
  final bool showBorder;
  final Color borderColor;
  final Color backgroundColor;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      margin: margin,
      padding: padding,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(radius),
        border: showBorder ? Border.all(color: borderColor): null
      ),
      child: child,
    );
  }
}