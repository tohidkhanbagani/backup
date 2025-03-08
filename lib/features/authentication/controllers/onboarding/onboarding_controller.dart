import 'package:e_commerce_app/features/screens/login/login.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';



class AppOnBoardingController extends GetxController{
  static AppOnBoardingController get instance => Get.find();

  // Variables

  final pageController = PageController();

  Rx<int> currentPageIndex = 0.obs;

  // update current index when page scroll
  void updatePageIndicator(index) => currentPageIndex.value = index;

  // Jump to the specific dot selected page.
  void dotNavigationClick(index){
    currentPageIndex.value =index;
    pageController.jumpToPage(index);
  }

  //Update current index & jump to next page
  void nextPage(){

    if(currentPageIndex.value==2){
      Get.offAll(const AppLogInScreen());
    } else{
      int page = currentPageIndex.value+1;
      pageController.jumpToPage(page);
    }
  }

  // Update current index & jump to the last page
  void skipPage(){
    currentPageIndex.value = 2;
    Get.offAll(()=>AppLogInScreen());
  }


}