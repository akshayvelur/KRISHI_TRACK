import 'package:flutter/material.dart';
import 'package:krishi_track/controller/authentication.dart';
import 'package:krishi_track/view/introduction_screen/introduction.dart';
import 'package:krishi_track/view/utils/custom_fonts.dart';
import 'package:krishi_track/view/utils/navigation_animation.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(automaticallyImplyLeading: false,centerTitle: true,
    title: Text("Profile",style: homeLogoFont,),actions: [IconButton(onPressed: ()async{await GoogleSignInService.signOut();Navigator.pushReplacement(context, FadeTransitionPageRoute(child: IntroductionScreen()));
    }, icon: Icon(Icons.logout))],),);
  }
}