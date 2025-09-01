
import 'package:flutter/material.dart';
import 'package:krishi_track/view/utils/custom_colors.dart';
import 'package:krishi_track/view/utils/custom_fonts.dart';

class DetailsAppBar extends StatelessWidget {
  const DetailsAppBar({
    super.key,
    required this.item,
  });

  final Map item;

  @override
  Widget build(BuildContext context) {
    return AppBar(centerTitle: true,
      leading: IconButton(
        onPressed: () {Navigator.pop(context);},
        icon: Icon(Icons.arrow_back_ios_new,color:greenClr,),
      ),
      title: Text(item["title"],style:appBarFont ,),
    );
  }
}
