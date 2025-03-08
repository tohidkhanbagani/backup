import 'package:flutter/material.dart';


class AppSectionHeading extends StatelessWidget {
  const AppSectionHeading({
    super.key,
    this.onPressed,
    this.textColor,
    required this.title,
    this.showActionButton=false,
    this.buttonTextTitle='View all',
  });

  final String title;
  final String buttonTextTitle;
  final void Function()? onPressed;
  final Color? textColor;
  final bool showActionButton;


  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
      Text(title, 
          style: Theme.of(context).textTheme.headlineSmall!.apply(color: textColor), 
          maxLines: 1, 
          overflow: TextOverflow.ellipsis,),
      if(showActionButton) TextButton(onPressed: onPressed, child: Text(buttonTextTitle))
      ]
      );
  }
}