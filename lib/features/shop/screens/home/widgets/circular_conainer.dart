import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:flutter/material.dart';


class AppCircularContainer extends StatelessWidget {
  const AppCircularContainer({
    super.key,
  this.width=400,
  this.height=400,
  this.radius=400,
  this.padding=0,
  this.child,
  this.backgroundColor=AppColors.white, 
  this.margin
  });

  final double? width;
  final double? height;
  final double radius;
  final double padding;
  final Widget? child;
  final Color backgroundColor;
  final EdgeInsets? margin;


  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      margin: margin,
      padding: EdgeInsets.all(0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(400),
        color: backgroundColor // AppColors.textAccent.withOpacity(0.1)
      ),
    );
  }
}