import 'package:e_commerce_app/common/widgets/app%20layouts/grid_layout.dart';
import 'package:e_commerce_app/common/widgets/appbar/custom_appbar.dart';
import 'package:e_commerce_app/common/widgets/brand%20card%20view/brand_card_view.dart';
import 'package:e_commerce_app/common/widgets/containers/search_container.dart';
import 'package:e_commerce_app/common/widgets/text%20sections/section_heading.dart';
import 'package:e_commerce_app/common/widgets/texts/brand_title_with_verification.dart';
import 'package:e_commerce_app/features/shop/screens/home/widgets/cart_counter.dart';
import 'package:e_commerce_app/features/shop/screens/home/widgets/rounded_container.dart';
import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:e_commerce_app/utils/constants/enums.dart';
import 'package:e_commerce_app/utils/constants/image_strings.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:e_commerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

import '../../../../common/widgets/appbar/tabbar.dart';
import '../../../../common/widgets/brand card view/brand_showcase.dart';
import '../../../../common/widgets/images/Circular_image.dart';



class Store extends StatelessWidget {
  const Store({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppCustomAppBar(
          title: Text('Store', style: Theme.of(context).textTheme.headlineMedium),
           
          actions: [
            AppCartCounterWidget(onPressed: (){})
            ],
            ),
      
            body: NestedScrollView(headerSliverBuilder: (_,innerBoxIsScrolled){
              return [
                SliverAppBar(
                  automaticallyImplyLeading: false,
                  pinned: true,
                  floating: true,
                  backgroundColor: AppHelperFunctions.isDarkMode(context) ? AppColors.black : AppColors.white,
                  expandedHeight: 440,
      
                  flexibleSpace: Padding(padding: const EdgeInsets.all(AppSizes.defaultSpace),
                  child: ListView(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
      
                    children: [
      
      
                      // Search Bar
                      const SizedBox(height: AppSizes.spaceBtwItems,),
                      const AppHomeScreenSearchBarWidget(hintText: 'search In store', showBackground: false, padding: EdgeInsets.zero,),
                      const SizedBox(height: AppSizes.spaceBtwSections,),
      
                      // Featured Brands
                      AppSectionHeading(title: 'Featured Brands', onPressed: () {}, showActionButton: true,),
                      const SizedBox(height: AppSizes.spaceBtwItems / 1.5,),
      
                      // Brands
      
                    AppGridLayout(itemCount: 4, mainAxisExtent: 80 , itemBuilder: (_,index){
                      return GestureDetector(
                        onTap: () {},
                        child: AppRoundContainer(
                          padding: const EdgeInsets.all(AppSizes.sm),
                          showBorder: true,
                          backgroundColor: Colors.transparent,
                          child: Row(
                            children: [
                        
                              // icon
                              Flexible(
                                child: AppCircularImage(
                                  image: AppImages.clothIcon, 
                                  overlayColor: AppHelperFunctions.isDarkMode(context) ? AppColors.white : AppColors.dark,
                                  backgroundColor: Colors.transparent,
                                  isNetworkImage: false,
                                  ),
                              ),
                        
                                const SizedBox(height: AppSizes.spaceBtwItems / 2,),
                        
                                // Text
                                Expanded(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      const AppBrandTitleWithVerfication(title: 'Nike', brandTextSizes: TextSizes.large,),
                                                        
                                      Text(
                                        '256 Products',
                                        overflow: TextOverflow.ellipsis,
                                        style: Theme.of(context).textTheme.labelMedium
                                      )
                                                        
                                    ],
                                  ),
                                ),
                            ],
                          ),
                        ),
                      );
                    },
      
                    )
                    
                    
                    ],
      
      
                  ),
                  ),

                  bottom: const AppTabBar(
                    
                  tabs: [
                  Tab(child: Text('Sports'),),
                  Tab(child: Text('Furniture'),),
                  Tab(child: Text('Electronics'),),
                  Tab(child: Text('Cloths')),
                  Tab(child: Text('Cosmetics'),),
                ])
                ,
                  
                )
              ];
            }, 
            
            body: const TabBarView(
              
              children: [



              ]
              
              
              
              ),
            
            
            
            
            
            
            
            
            
            ),
      
      ),
    );
  }
}

