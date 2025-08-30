
import 'package:flutter/material.dart';
import 'package:krishi_track/view/utils/mediaquery.dart';
import 'package:krishi_track/view/utils/custom_fonts.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text("KRISHI TRACK", style: homeLogoFont),
      actions: [
        Image.asset("assets/bell.png", scale: 20),
        SizedBox(width: mediaqueryWidth(.04, context)),
      ],
      automaticallyImplyLeading: false,
    );
  }
}
