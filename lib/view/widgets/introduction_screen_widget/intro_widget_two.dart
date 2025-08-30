
import 'package:flutter/material.dart';

import 'package:krishi_track/view/utils/custom_colors.dart';
import 'package:krishi_track/view/utils/custom_fonts.dart';
import 'package:krishi_track/view/utils/mediaquery.dart';

class IntroWidgetTwo extends StatelessWidget {
  const IntroWidgetTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return
    // Base image
Stack(
      children: [
        Container(
          width: mediaqueryWidth(10, context),
          height: mediaqueryHeight(10, context),
          child: Image.asset("assets/Vibrant Exotic Fruits_ Dramatic Lighting & Textured Details in Stunning Food Photography.jpeg", fit: BoxFit.cover),
        ),
        Positioned(
          bottom: mediaqueryHeight(0.25, context),left: mediaqueryWidth(0.05, context),
          child: Text(
            "Horticulture Crops 🍇🥕",
            style:introHeadLineFont,
          ),
        ), Positioned(
          bottom: mediaqueryHeight(0.17, context),left: mediaqueryWidth(0.05, context),
          child: Padding(
            padding: const EdgeInsets.only(right: 10,),
            child: SizedBox(width: mediaqueryWidth(.89, context),
              child: Text(
                "Fruits: Mango, Banana, Apple, Grapes, Papaya,Vegetables: Tomato, Potato, Onion, Cabbage, Okra",maxLines: 3,overflow: TextOverflow.ellipsis,
                style:introSubLineFont,
              ),
            ),
          ),
        ), 
      ],
    );
  }
}
