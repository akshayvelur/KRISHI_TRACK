
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
         Align(
      alignment: Alignment.center,
      child: Padding(
        padding: const EdgeInsets.only(top:350),
        child: Text(
          "KRISHI TRACK",
          style: splashLogo,
        ),
      ),
    ),
        
      ],
    );
  }
}
