import 'package:flutter/material.dart';
import 'package:krishi_track/view/widgets/introduction_screen_widget/pageview_widget.dart';

class IntroductionScreen extends StatelessWidget {
  IntroductionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: PageViewWidget());
  }
}
