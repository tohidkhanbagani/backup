import 'package:flutter/material.dart';

import '../../../../../common/widgets/image text widgets/vertical_image_text.dart';
import '../../../../../utils/constants/image_strings.dart';

class AppHomeCatergoriesList extends StatelessWidget {
  const AppHomeCatergoriesList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
        itemCount: 6,
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemBuilder: (_,index){
          return AppVerticalImageTextAndContainer(categoryImage: AppImages.adidasLogo, title: 'Category Name', onTap: (){},);
        }),
    );
  }
}
