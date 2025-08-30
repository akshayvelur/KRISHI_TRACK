
import 'package:flutter/material.dart';
import 'package:krishi_track/view/utils/custom_fonts.dart';
import 'package:krishi_track/view/utils/mediaquery.dart';

class SplashImage extends StatelessWidget {
  const SplashImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: mediaqueryWidth(10, context),
          height: mediaqueryHeight(10, context),
          child: Image.asset("assets/ONN  Green.jpeg", fit: BoxFit.cover),
        ),
        Positioned(
          bottom: mediaqueryHeight(0.27, context),left: mediaqueryWidth(0.25, context),
          child: Text(
            "KRISHI TRACK",
            style:splashLogo,
          ),
        ),
      ],
    );
  }
}
