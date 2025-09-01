import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:krishi_track/controller/user_data.dart';
import 'package:krishi_track/view/details_screen.dart/details_screen.dart';
import 'package:krishi_track/view/home_screen/bloc/home_bloc.dart';
import 'package:krishi_track/view/utils/custom_colors.dart';
import 'package:krishi_track/view/utils/custom_fonts.dart';
import 'package:krishi_track/view/utils/custom_list.dart';
import 'package:krishi_track/view/utils/mediaquery.dart';
import 'package:krishi_track/view/utils/navigation_animation.dart';

class VegitableWidget extends StatelessWidget {
  const VegitableWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<HomeBloc, HomeState>(
      listener: (context, state) {
        // TODO: implement listener
        if(state is VegitabelOnTapState){
          Navigator.push(context, FadeTransitionPageRoute(child:DetailsScreen(item: state.items) ));
        }
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 10, left: 5),
                  child: Text("Vegitables", style: homeSmallFont),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Text("SeeAll", style: homeSmallFontG),
                ),
              ],
            ),

            StreamBuilder(
              stream: UserData.vegitable,
              builder: (
                context,
                AsyncSnapshot<QuerySnapshot<Map<String, dynamic>>> snapshot,
              ) {
                if (snapshot.hasError) {
                  return Center(child: Text(snapshot.error.toString()));
                }
                if (snapshot.hasData) {
                  List<Map<String, dynamic>> alldata =
                      snapshot.data!.docs.map((e) => e.data()).toList();

                  return Container(
                    height: mediaqueryHeight(0.23, context),
                    width: mediaqueryWidth(10, context),
                    child: ListView.builder(
                      itemCount: alldata.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        final mydata = alldata[index];
                        return InkWell(
                          onTap: () {context.read<HomeBloc>().add(VegitableOnTapEvent(items: mydata));},
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Container(
                                  height: mediaqueryHeight(0.13, context),
                                  width: mediaqueryWidth(0.33, context),
                                  decoration: BoxDecoration(
                                    boxShadow: [
                                      BoxShadow(
                                        blurRadius: 2,
                                        blurStyle: BlurStyle.normal,
                                        offset: Offset(0, 3),
                                        color: greyClr,
                                      ),
                                    ],

                                    borderRadius: BorderRadius.circular(10),
                                    image: DecorationImage(
                                      image: AssetImage(vegImages[index]),
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: mediaqueryHeight(.005, context),
                                ),
                                Text(mydata["item"], style: homeXSmallFont),
                                Text(mydata["quantity"], style: homeMicroFont),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  );
                }
                return Center(
                  child: CircularProgressIndicator(color: greenClr),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
