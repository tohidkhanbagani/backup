import 'package:flutter/material.dart';

import '../../../features/shop/screens/home/widgets/rounded_container.dart';
import '../../../utils/constants/colors.dart';
import '../../../utils/constants/enums.dart';
import '../../../utils/constants/image_strings.dart';
import '../../../utils/constants/sizes.dart';
import '../../../utils/helpers/helper_functions.dart';
import '../images/circular_image.dart';
import '../texts/brand_title_with_verification.dart';



class AppBrandCard extends StatelessWidget {
  const AppBrandCard({super.key, 
  required this.showBorder, 
  this.onTap
  });

  final bool showBorder;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {

    final isdark = AppHelperFunctions.isDarkMode(context);

    return GestureDetector(
                        onTap: onTap,

                        // -- Container Design
                        child: AppRoundContainer(
                          padding: const EdgeInsets.all(AppSizes.sm),
                          showBorder: showBorder,
                          backgroundColor: Colors.transparent,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                        
                              // -- Icon
                              Flexible(
                                child: AppCircularImage(
                                  image: AppImages.clothIcon, 
                                  overlayColor: isdark ? AppColors.white : AppColors.dark,
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
  }
}