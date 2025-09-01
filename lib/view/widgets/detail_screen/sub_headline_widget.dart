
import 'package:flutter/material.dart';
import 'package:krishi_track/view/utils/custom_fonts.dart';

class SubHeadlineWidget extends StatelessWidget {
  const SubHeadlineWidget({
    super.key,required this.item
  });
final Map item;
  @override
  Widget build(BuildContext context) {
    return item.isNotEmpty? Padding(
      padding: const EdgeInsets.only(left: 15),
      child: Text("${item['item']} Microgreens",style:detailsMediumfont ,),
         //
    ):SizedBox();
  }
}
