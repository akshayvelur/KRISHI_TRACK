
import 'package:flutter/material.dart';
import 'package:krishi_track/view/utils/custom_fonts.dart';

class MyFieldWidget extends StatelessWidget {
  const MyFieldWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 5,left: 15,right: 15),
      child: Text("My Field",style:homeMediumFont ,),
    );
  }
}
