
import 'package:flutter/material.dart';
import 'package:krishi_track/view/utils/custom_fonts.dart';

class MyFieldWidget extends StatelessWidget {
  const MyFieldWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Text("My Field",style:homeMediumFont ,),
    );
  }
}
