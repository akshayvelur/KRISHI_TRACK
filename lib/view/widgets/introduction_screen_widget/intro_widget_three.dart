import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:krishi_track/view/bottom_navigator/bottom_navigator.dart';
import 'package:krishi_track/view/home_screen/home_screen.dart';
import 'package:krishi_track/view/introduction_screen/bloc/introduction_bloc.dart';
import 'package:krishi_track/view/utils/custom_colors.dart';
import 'package:krishi_track/view/utils/custom_fonts.dart';
import 'package:krishi_track/view/utils/mediaquery.dart';
import 'package:krishi_track/view/utils/navigation_animation.dart';

class IntroWidgetThree extends StatelessWidget {
  const IntroWidgetThree({super.key});

  @override
  Widget build(BuildContext context) {
    return
    // Base image
    BlocListener<IntroductionBloc, IntroductionState>(
      listener: (context, state) {
        // TODO: implement listener
        if(state is IntroductionToBottomNavigationState){
 navigateWithAnimation(context,BottomNavigatorScreen());
          
        }
      },
      child: Stack(
        children: [
          Container(
            width: mediaqueryWidth(10, context),
            height: mediaqueryHeight(10, context),
            child: Image.asset(
              "assets/_Unveiling the Healthful Qualities of Tea_ An Insightful Exploration_.jpeg",
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            bottom: mediaqueryHeight(0.31, context),
            left: mediaqueryWidth(0.05, context),
            child: SizedBox(
              width: mediaqueryWidth(.89, context),
              child: Text(
                "Medicinal & Aromatic Crops 🌿",
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
                style: introHeadLineFont,
              ),
            ),
          ),
          Positioned(
            bottom: mediaqueryHeight(0.25, context),
            left: mediaqueryWidth(0.05, context),
            child: Padding(
              padding: const EdgeInsets.only(right: 10),
              child: SizedBox(
                width: mediaqueryWidth(.89, context),
                child: Text(
                  "Tulsi, Aloe Vera, Ashwagandha, Lemongrass, Mint",
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                  style: introSubLineFont,
                ),
              ),
            ),
          ),
          Positioned(
            bottom: mediaqueryHeight(0.10, context),
            left: mediaqueryWidth(0.085, context),
            child: Column(
              children: [
                InkWell(
                  onTap: () {context.read<IntroductionBloc>().add(IntroductionToBottomNavigationEvent());},
                  child: Container(
                    height: mediaqueryHeight(.05, context),
                    width: mediaqueryWidth(.85, context),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: whiteClr,
                    ),
                    child: Center(
                      child: Text("GET STARTED", style: introSubLineFontBlk),
                    ),
                  ),
                ),
                SizedBox(height: mediaqueryHeight(.01, context)),
                TextButton(
                  onPressed: () {},
                  child: Text("Log in", style: introSubLineFont),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
