import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';



class AppSpacingStyles{
  static const EdgeInsetsGeometry paddingWithAppBarHeight = EdgeInsets.only(
    top: AppSizes.appBarHeight,
    bottom: AppSizes.defaultSpace,
    right: AppSizes.defaultSpace,
    left: AppSizes.defaultSpace
  );
}