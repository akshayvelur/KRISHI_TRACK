

import 'package:flutter/material.dart';
import 'package:krishi_track/view/utils/mediaquery.dart';
import 'package:krishi_track/view/widgets/introduction_screen_widget/intro_widget_one.dart';
import 'package:krishi_track/view/widgets/introduction_screen_widget/intro_widget_three.dart';
import 'package:krishi_track/view/widgets/introduction_screen_widget/intro_widget_two.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class PageViewWidget extends StatelessWidget {
  PageViewWidget({super.key});

  final controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: mediaqueryHeight(1, context),
          child: Stack(
            children: [
              PageView(
                controller: controller,
                children: [
                  // intro one
                  IntroWidgetOne(),

                  // into two
                  IntroWidgetTwo(),
                  // intro three
                  IntroWidgetThree(),
                ],
              ),
              Positioned(
                left: mediaqueryWidth(.45, context),
                bottom: mediaqueryHeight(.08, context),
                child: SmoothPageIndicator(
                  effect: WormEffect(
                    dotHeight: 10.0,
                    dotWidth: 10.0,
                    spacing: 10.0,
                    radius: 16.0,
                    activeDotColor: Colors.white,
                    dotColor: Colors.black,
                  ),
                  controller: controller,
                  count: 3,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
