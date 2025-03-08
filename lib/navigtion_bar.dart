// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:e_commerce_app/features/shop/screens/home/home.dart';
import 'package:e_commerce_app/features/shop/screens/store/store.dart';
import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:e_commerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:get/get.dart';

class AppBottomNavigationBar extends StatelessWidget {
  const AppBottomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {

    final controller = Get.put(NavigationController());

    final DarkMode = AppHelperFunctions.isDarkMode(context);

    return Scaffold(

      bottomNavigationBar: Obx(
         ()=> NavigationBar(

          backgroundColor: DarkMode? AppColors.black : AppColors.white,

          indicatorColor: DarkMode? AppColors.white.withOpacity(0.1) : AppColors.black.withOpacity(0.1),
        
          height: 80,
        
          elevation: 0,
        
          selectedIndex: controller.selectedIndex.value,
        
          onDestinationSelected: (index)=> controller.selectedIndex.value = index,
        
          destinations: [
        
           const NavigationDestination(icon: Icon(Iconsax.home), label: 'Home'),
        
           const NavigationDestination(icon: Icon(Iconsax.shop), label: 'Store'),
        
           const NavigationDestination(icon: Icon(Iconsax.heart), label: 'Wishlist'),
        
           const NavigationDestination(icon: Icon(Iconsax.user), label: 'Profile'),
        
          ]
        ),
      ),

      body: Obx(()=> controller.screens[controller.selectedIndex.value]),

    );
  }
}






class NavigationController extends GetxController{
  final Rx<int> selectedIndex = 0.obs;

  final screens = [
    AppHomeScreen(),
    Store(),
    Container(color: Colors.cyan,),
    Container(color: Colors.teal,),
    ];
}