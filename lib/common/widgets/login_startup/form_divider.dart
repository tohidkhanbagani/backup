import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:flutter/material.dart';



class LoginDivider extends StatelessWidget {
  const LoginDivider({
    super.key,
    required this.dividerText
  });

  
  final dividerText;

  @override
  Widget build(BuildContext context) {
    final dark = Theme.of(context).brightness == Brightness.dark;
    return Row(
    
      mainAxisAlignment: MainAxisAlignment.center,
    
      children: [
    
        Flexible(child: Divider(color: dark ? AppColors.darkGrey : AppColors.grey, thickness: 0.5, indent: 60, endIndent: 5,)),
        
        Text(dividerText, style: Theme.of(context).textTheme.labelMedium,),
    
        Flexible(child: Divider(color: dark ? AppColors.darkGrey : AppColors.grey, thickness: 0.5, indent: 5, endIndent: 60,)),
      
      
      
      ],
    
    );
  }
}