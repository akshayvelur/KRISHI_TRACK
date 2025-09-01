import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart' show BlocConsumer;
import 'package:krishi_track/view/details_screen.dart/bloc/details_bloc.dart';
import 'package:krishi_track/view/utils/custom_colors.dart';
import 'package:krishi_track/view/utils/custom_fonts.dart';
import 'package:krishi_track/view/utils/custom_list.dart';
import 'package:krishi_track/view/utils/mediaquery.dart';
import 'package:krishi_track/view/widgets/detail_screen/detail_screen_widget.dart';
import 'package:krishi_track/view/widgets/detail_screen/image_view_widget.dart';
import 'package:krishi_track/view/widgets/detail_screen/monitoring_data_widget.dart';
import 'package:krishi_track/view/widgets/detail_screen/sub_headline_widget.dart';
import 'package:krishi_track/view/widgets/detail_screen/type_of_farm.dart';

class DetailsScreen extends StatelessWidget {
  DetailsScreen({super.key, required this.item});
  final Map item;
  int index = 1;
  TextEditingController _controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<DetailsBloc, DetailsState>(
      listener: (context, state) {
        if(state is ItemFoundState){
          index=state.index;
        }
        // TODO: implement listener
      },
      builder: (context, state) {
        return GestureDetector(onTap: FocusScope.of(context).unfocus,
          child: Scaffold(
            appBar: PreferredSize(
              preferredSize: Size(
                mediaqueryWidth(10, context),
                mediaqueryHeight(.09, context),
              ),
              child: DetailsAppBar(item: item),
            ),
            body: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TypeOfFarm(item: item, controller: _controller),
                  ImageViewWidget(index: index, item: item),
                  SubHeadlineWidget(item: item),
                  MonitoringDataWidget(item: item, index: index),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
