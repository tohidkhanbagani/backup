import 'package:e_commerce_app/utils/constants/enums.dart';
import 'package:flutter/material.dart';



class AppBrandTitleText extends StatelessWidget {
  const AppBrandTitleText({super.key, 
  this.color, 
  this.textAlign = TextAlign.left, 
  required this.title,
  this.maxLines = 1, 
  this.brandTextSize = TextSizes.small
  });


  final Color? color;
  final String title;
  final int maxLines;
  final TextAlign? textAlign;
  final TextSizes brandTextSize;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      textAlign: textAlign,
      maxLines: maxLines,
      overflow: TextOverflow.ellipsis,

      // Check Which Brand Is Required and Set that Style
      style: brandTextSize == TextSizes.small
      ? Theme.of(context).textTheme.labelMedium!.apply(color: color)
      : brandTextSize == TextSizes.medium
        ? Theme.of(context).textTheme.bodyLarge!.apply(color: color)
        : brandTextSize == TextSizes.large
          ? Theme.of(context).textTheme.titleLarge!.apply(color: color)
          : Theme.of(context).textTheme.bodyMedium!.apply(color: color)
    );
  }
}