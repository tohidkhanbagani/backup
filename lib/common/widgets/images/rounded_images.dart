import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/sizes.dart';


class AppRoundImage extends StatelessWidget {
  const AppRoundImage({
    super.key, 
    this.width, 
    this.height, 
    this.border, 
    this.padding,
    this.onPressed,
    this.borderRadius=AppSizes.md, 
    required this.imageUrl, 
    this.isNetworkImage = false, 
    this.fit=BoxFit.contain, 
    this.applyImageRadius = true, 
    this.backgroundColor,
  });

  final String imageUrl;
  final BoxFit? fit;
  final BoxBorder? border;
  final double? width,height;
  final bool? isNetworkImage;
  final double? borderRadius;
  final bool? applyImageRadius;
  final Color? backgroundColor;
  final VoidCallback? onPressed;
  final EdgeInsetsGeometry? padding;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: padding,
      decoration: BoxDecoration(
        border: border,
        color: backgroundColor,
        borderRadius: BorderRadius.circular(borderRadius!),
        
      ),
      
      child: ClipRRect(
        borderRadius: applyImageRadius! ? BorderRadius.circular(borderRadius!): BorderRadius.zero, 
        child: Image(fit: fit,
        
        image: (isNetworkImage ?? false) // Add a null check for isNetworkImage
              ? NetworkImage(imageUrl) 
              : AssetImage(imageUrl) as ImageProvider, // Ensure correct type casting for AssetImage,)
      ),
      )
    );
  }
}