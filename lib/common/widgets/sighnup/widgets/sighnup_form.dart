import 'package:e_commerce_app/common/widgets/sighnup/widgets/terms_and_conditions.dart';
import 'package:e_commerce_app/features/screens/register/email_verification.dart';
import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:e_commerce_app/utils/constants/texte_strings.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:get/get.dart';

class AppSighUpForm extends StatelessWidget {
  const AppSighUpForm({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    final dark = Theme.of(context).brightness == Brightness.dark;
    return Form(
      child: Column(
    
        children: [             

          Row(
    
            children: [
    
      /// Name Input Field
      
      Expanded(
        child: TextFormField(
          expands: false,
          decoration: InputDecoration(prefixIcon: const Icon(Iconsax.user), label: Text(AppTexts.firstName, style: TextStyle(color: dark? AppColors.white : AppColors.black),)),
        
        ),
      ),
    
      // Space Between Fields
      
      const SizedBox(width: AppSizes.spaceBtwInputFields,),
    
      /// Last Name Input Field
      
      Expanded(
        child: TextFormField(
          expands: false,
          decoration: InputDecoration(prefixIcon: const Icon(Iconsax.user), label: Text(AppTexts.lastName, style: TextStyle(color: dark? AppColors.white : AppColors.black),)),
        
        ),
      ),
    
    
    
       
            ],
          ),
    
        // Space Between Fields
    
          const SizedBox(height: AppSizes.spaceBtwInputFields,),
    
      /// Username Input Field
      
       TextField(
        decoration: InputDecoration(prefixIcon: const Icon(Iconsax.user_edit), label: Text(AppTexts.username,style: TextStyle(color: dark? AppColors.white : AppColors.black),)),
      ),
    
    
      // Space Between Fields
    
      const SizedBox(height: AppSizes.spaceBtwInputFields,),                
    
      /// Username Input Field
      
      TextField(
        decoration: InputDecoration(prefixIcon: const Icon(Iconsax.wallet), label: Text(AppTexts.email,style: TextStyle(color: dark? AppColors.white : AppColors.black),)),
      ),
    
    
      // Space Between Fields
    
      const SizedBox(height: AppSizes.spaceBtwInputFields,),   
    
      /// phone number Input Field
      
      TextField(
        decoration: InputDecoration(prefixIcon: const Icon(Iconsax.mobile), label: Text(AppTexts.phoneNo, style: TextStyle(color: dark? AppColors.white : AppColors.black),)),
      ),
    
    
      // Space Between Fields
    
      const SizedBox(height: AppSizes.spaceBtwInputFields,),
    
      ///  Password Input Field
    
     TextField(
        decoration: InputDecoration(prefixIcon: const Icon(Iconsax.password_check), label: Text(AppTexts.password, style: TextStyle(color: dark? AppColors.white : AppColors.black),), suffixIcon: IconButton(onPressed: (){}, icon: const Icon(Iconsax.eye))),
      ),
    
    
      /// pace after fields
    
      const SizedBox(height: AppSizes.defaultSpace,),
    
      AppSighUpTermsAndContitions(),
    
    
    
    
      // Space after privacy policy checkbox
    
      const SizedBox(height: AppSizes.defaultSpace,),
    
    
    
      // SighnUp button
    
      SizedBox( width: double.infinity,child: ElevatedButton(onPressed: ()=>Get.to(()=> AppEmailVerification()), child: const Text(AppTexts.signup)))
    
    
    
    
        ],
      
      
      )
      
      
      
      
      );
  }
}

