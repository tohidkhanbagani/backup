import 'package:e_commerce_app/features/shop/screens/home/widgets/cart_counter.dart';
import 'package:flutter/material.dart';

import '../../../../../common/widgets/appbar/custom_appbar.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/texte_strings.dart';





class HomeAppBar extends StatelessWidget {
  const HomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppCustomAppBar(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          
          Text(AppTexts.homeAppbarTitle, style: Theme.of(context).textTheme.labelMedium!.apply(color: AppColors.grey)),
          Text(AppTexts.homeAppbarSubTitle, style: Theme.of(context).textTheme.headlineSmall!.apply(color: AppColors.white))
        ],
      ),
    
      actions: [
      AppCartCounterWidget(onPressed: (){}, iconColor: AppColors.white,),
      ],
    );
  }
}


