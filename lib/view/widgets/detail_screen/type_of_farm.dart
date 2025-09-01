
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:krishi_track/view/details_screen.dart/bloc/details_bloc.dart';
import 'package:krishi_track/view/utils/custom_colors.dart';
import 'package:krishi_track/view/utils/custom_fonts.dart';
import 'package:krishi_track/view/utils/mediaquery.dart';

class TypeOfFarm extends StatelessWidget {
  const TypeOfFarm({
    super.key,
    required this.item,
    required TextEditingController controller,
  }) : _controller = controller;

  final Map item;
  final TextEditingController _controller;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 15,top: 5),
          child: Container(
            width: mediaqueryWidth(0.28, context),
            height: mediaqueryHeight(0.05, context),
            decoration: BoxDecoration(
              color: whiteClr,
              boxShadow: [BoxShadow(blurRadius: 2)],
    
              borderRadius: BorderRadius.circular(10),
            ),
            child: Center(
              child:
                  item['type'] == "micro"
                      ? Text("Tray", style: dMediumFont)
                      : Text(item['quantity'], style: dMediumFont),
            ),
          ),
        ),
       if(item["type"]=="micro") Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Container(
            height: mediaqueryHeight(.051, context),
            width: mediaqueryWidth(0.1, context),
            child: Center(
              child: TextFormField(keyboardType: TextInputType.numberWithOptions(),
                controller: _controller,onChanged:(value) {
                 context.read<DetailsBloc>().add(ItemFountEvent(index:int.parse(value) ));
                },
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
