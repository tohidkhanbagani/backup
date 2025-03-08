import 'package:e_commerce_app/common/widgets/curved%20edges/curved_edges_widget.dart';
import 'package:e_commerce_app/features/shop/screens/home/widgets/circular_conainer.dart';
import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:flutter/material.dart';



class AppPrimaryHeaderContainer extends StatelessWidget {
  const AppPrimaryHeaderContainer({
    super.key, required this.child
  });


  final Widget child;

  @override

  Widget build(BuildContext context) {

    return AppCurvedWIdget(

      child: Container(

            color: AppColors.primary,

            padding: const EdgeInsets.only(bottom: 0),

            child: SizedBox(

              height: 400,


              child: Stack(

    children: [


      Positioned(

      top: -150,

      right: -250,

        child: AppCircularContainer(backgroundColor: AppColors.textAccent.withOpacity(0.1),
        )
        ),

      Positioned(

      top: 100,

      right: -300,

        child: AppCircularContainer(backgroundColor: AppColors.textAccent.withOpacity(0.1),
        )
        ),

        child

            ],
          ),
        ),
      ),
    );
  }
}