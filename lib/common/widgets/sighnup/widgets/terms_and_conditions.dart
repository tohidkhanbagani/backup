import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:e_commerce_app/utils/constants/texte_strings.dart';
import 'package:flutter/material.dart';


class AppSighUpTermsAndContitions extends StatelessWidget {
  const AppSighUpTermsAndContitions({
    super.key,
  });



  @override
  Widget build(BuildContext context) {
    final dark = Theme.of(context).brightness == Brightness.dark;
    return Row(
        
      children: [
        
        
    // Privacy policy checkbox
        
    SizedBox( height: 24, width: 24,child: Checkbox(value: true, onChanged: (value){}),),
    const SizedBox( width: AppSizes.spaceBtwItems,),
    
    
    // privacy policy text 
        
    Text.rich(TextSpan(children: [
      TextSpan(text: '${AppTexts.iAgreeTo} ', style: Theme.of(context).textTheme.bodySmall),
      TextSpan(text: '${AppTexts.privacyPolicy} ', style: Theme.of(context).textTheme.bodyMedium!.apply(
        color: dark? AppColors.white:AppColors.primary, 
        decoration: TextDecoration.underline, 
        decorationColor: dark? AppColors.white : AppColors.primary
        )
        ),
        TextSpan(text: '${AppTexts.and} ', style: Theme.of(context).textTheme.bodyMedium),
        TextSpan(text: '${AppTexts.termsOfUse} ', style: Theme.of(context).textTheme.bodyMedium!.apply(
        color: dark? AppColors.white:AppColors.primary, 
        decoration: TextDecoration.underline, 
        decorationColor: dark? AppColors.white : AppColors.primary
        )
        ),
    ]
    )
    )
        
        
        
        
        
        
      ],
        
        
        
        
        
    );
  }
}