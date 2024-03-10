import 'package:flutter/material.dart';

import '../../../../utils/constants/colors.dart';
import '../curved_edges/curved_edges_widget.dart';
import 'circular_container.dart';

class JPrimaryHeaderContainer extends StatelessWidget {
  const JPrimaryHeaderContainer({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return JCurvedEdgeWidget(
      child: SizedBox(
        height: 400,
        child: Container(
          color: JColors.primary,
          child: Stack(
            children: [
              Positioned(
                  top: -150,
                  right: -250,
                  child: JCircularContainer(
                      backgroundColor: JColors.white.withOpacity(0.1))),
              Positioned(
                  top: 100,
                  right: -300,
                  child: JCircularContainer(
                      backgroundColor: JColors.white.withOpacity(0.1))),
              child,
            ],
          ),
        ),
      ),
    );
  }
}
