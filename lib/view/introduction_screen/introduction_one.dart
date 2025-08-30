import 'package:flutter/material.dart';
import 'package:krishi_track/view/utils/custom_fonts.dart';
import 'package:krishi_track/view/utils/mediaquery.dart';


class IntroductionScreen extends StatelessWidget {
  const IntroductionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body:Stack(
      children: [
        Container(
          width: mediaqueryWidth(10, context),
          height: mediaqueryHeight(10, context),
          child: Image.asset("assets/download (1).jpeg", fit: BoxFit.cover),
        ),
        Positioned(
          bottom: mediaqueryHeight(0.27, context),left: mediaqueryWidth(0.05, context),
          child: Text(
            "Field Crops",
            style:IntroHeadLineFont,
          ),
        ), Positioned(
          bottom: mediaqueryHeight(0.2, context),left: mediaqueryWidth(0.05, context),
          child: Padding(
            padding: const EdgeInsets.only(right: 10),
            child: SizedBox(width: mediaqueryWidth(.89, context),
              child: Text(
                "Rice, Wheat, Maize, Sorghum, Barley, Millets",maxLines: 2,overflow: TextOverflow.ellipsis,
                style:IntroSubLineFont,
              ),
            ),
          ),
        )
      ],
    ));
  }
}