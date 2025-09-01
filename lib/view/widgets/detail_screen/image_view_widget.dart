
import 'package:flutter/material.dart';
import 'package:krishi_track/view/utils/custom_colors.dart';
import 'package:krishi_track/view/utils/custom_list.dart';
import 'package:krishi_track/view/utils/mediaquery.dart';

class ImageViewWidget extends StatelessWidget {
  const ImageViewWidget({
    super.key,
    required this.index,required this.item
  });

  final int index;
  final Map item;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Container(
        height: mediaqueryHeight(.27, context),
        width: mediaqueryWidth(10, context),
        decoration: BoxDecoration(color: whiteClr,
          borderRadius: BorderRadius.circular(10),boxShadow: [BoxShadow(blurRadius: 2)],
          image: DecorationImage(image:NetworkImage(item['image']),fit:BoxFit.fill )
        ),
      ),
    );
  }
}
