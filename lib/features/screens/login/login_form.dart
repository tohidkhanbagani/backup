// ignore_for_file: prefer_const_constructors, sort_child_properties_last
import 'package:e_commerce_app/features/screens/forgot%20Password/forgot_password.dart';
import 'package:e_commerce_app/features/screens/register/register_account.dart';
import 'package:e_commerce_app/navigtion_bar.dart';
import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:e_commerce_app/utils/constants/texte_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    super.key,
    
  });


  @override
  Widget build(BuildContext context) {
    final TextEditingController TextController = TextEditingController();
    final dark = Theme.of(context).brightness == Brightness.dark;
    // print(TextController.text);
    return Form(
      
      child: Padding(
    
        padding: const EdgeInsets.symmetric(vertical: AppSizes.spaceBtwSections ),
        child: Column( // Child of Form Widget
                      
        children: [
        
        /// Email Input Field
          
        TextFormField(decoration: InputDecoration(prefixIcon: Icon(Iconsax.direct_right) ,label: Text(AppTexts.email, style: TextStyle(color: dark? AppColors.white : AppColors.black),),),controller: TextController,),
        
        /// Sized Box For Space Between
        
        SizedBox(height: AppSizes.spaceBtwInputFields,),
        
        
        // Password Input Field
                      
        TextFormField(
          
          decoration: InputDecoration(prefixIcon: Icon(Iconsax.password_check), label: Text(AppTexts.password, style:  TextStyle(color: dark? AppColors.white : AppColors.black)), suffixIcon: Icon(Iconsax.eye)),),
        
                      // Sized Box for space between
        
                      const SizedBox(height: AppSizes.spaceBtwInputFields/2),
        
                      // Remember me Checkbox and forget Password widgets
        
          Row( // Row Start
        
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
        
          children: [
        
          Row(
        
            children: [
        
            /// remember me checkbox 
        
            Checkbox(value: true, onChanged: (value){}),
        
            // Text Widget for remember me
        
            Text(AppTexts.rememberMe),
        
            ],
          ),
        
        
            /// Forget Passwords 
            
            TextButton(onPressed: ()=> Get.to(()=>ForgotPasswordScreen()), child: Text(AppTexts.forgetPassword))
        
        
          ],
        
              ), // child Row  end
        
        
                      // Sized Box for space between sections
        
                      const SizedBox(height: AppSizes.spaceBtwSections,),
        
        
                      /// Sighn in Button
                      
                      SizedBox(
                        child: ElevatedButton(
                          onPressed: ()=>Get.off(()=> const AppBottomNavigationBar()), 
                          child: Text(
                            AppTexts.signIn,
                              )
                              ), width: double.infinity,),
        
        
                      /// Space between Buttons
                      
                      const SizedBox(height: AppSizes.spaceBtwItems,),
    
    
                      /// Create Account Button
                      
                      SizedBox(child: OutlinedButton(onPressed: ()=> Get.to(()=> const RegisterAccount()), child: Text(AppTexts.createAccount)), width: double.infinity,),
    
                        const SizedBox(height: AppSizes.spaceBtwSections,)
        ],
        
                      // Ending of Child Widget
                      ),
      )
    
    // Ending Of form
    );
  }
}