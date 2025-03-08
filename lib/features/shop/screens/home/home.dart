// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:e_commerce_app/common/widgets/containers/primary_container.dart';
import 'package:e_commerce_app/common/widgets/containers/search_container.dart';
import 'package:e_commerce_app/common/widgets/text%20sections/section_heading.dart';
import 'package:e_commerce_app/features/shop/screens/home/widgets/categories_list.dart';
import 'package:e_commerce_app/utils/constants/image_strings.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import '../../../../common/widgets/Products/product_cards/product_card_vertical.dart';
import '../../../../common/widgets/app layouts/grid_layout.dart';
import '../../../../utils/constants/colors.dart';
// import '../../../../utils/helpers/helper_functions.dart';
import 'widgets/carousel_slider.dart';
import 'widgets/custom_home_app_bar.dart';





class AppHomeScreen extends StatelessWidget {
  const AppHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // final dark = AppHelperFunctions.isDarkMode(context);
    return Scaffold(
       body: SingleChildScrollView(
        child: Column(
          children: [

          // Primary blue container that contains all the homepage widgets 
          AppPrimaryHeaderContainer(

            child: Column(

              children: [
                
                // Header
                const HomeAppBar(),

                const SizedBox(height: AppSizes.spaceBtwSections,),

                // Searchbar
                AppHomeScreenSearchBarWidget(hintText: "Search in Store"),

                SizedBox(height: AppSizes.spaceBtwSections),

                // Categories
                Padding(padding: EdgeInsets.only(left: AppSizes.defaultSpace),
                  
                child: Column(
                  
                  children: [
                  
                    // Heading
                    AppSectionHeading(title: 'Product Categories', textColor: AppColors.white,),
                    SizedBox(height: AppSizes.spaceBtwItems),
                  
                    // Scrollable Categories
                    AppHomeCatergoriesList()
                  
                  ],
                ),
                )


              ],
            ),
          ),
          


        // Carousal slider body

        Padding(
          padding: const EdgeInsets.all(AppSizes.defaultSpace),
          child: Column(
            children: [
            
          // Promo slider
              AppPromoCarouselSlider(banners: [AppImages.promoBanner1,AppImages.promoBanner2,AppImages.promoBanner3],),

              const SizedBox(height: AppSizes.spaceBtwSections,),
          // Heading
              AppSectionHeading(title: 'Popular Products', onPressed: (){},textColor: AppColors.white,showActionButton: true,),
              SizedBox(height: AppSizes.md,),

          // Popular Products
              AppGridLayout(itemCount: 6, itemBuilder: (_, index)=> const AppProductCardVertical(),),            
                  ],
          ),
        )


            
          ],
        ),
       ),
    );
  }
}












