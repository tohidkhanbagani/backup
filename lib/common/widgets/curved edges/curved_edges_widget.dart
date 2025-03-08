import 'package:e_commerce_app/common/widgets/curved%20edges/curved_edges.dart';
import 'package:flutter/material.dart';


class AppCurvedWIdget extends StatelessWidget {
  const AppCurvedWIdget({
    super.key, this.child
  });


  final Widget? child;
  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: AppCustomCurvedEdges(),
      child: child
    );
  }
}