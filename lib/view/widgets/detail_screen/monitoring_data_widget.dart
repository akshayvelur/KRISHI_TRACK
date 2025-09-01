import 'package:flutter/material.dart';
import 'package:krishi_track/view/utils/custom_colors.dart';
import 'package:krishi_track/view/utils/custom_fonts.dart';
import 'package:krishi_track/view/utils/mediaquery.dart';

class MonitoringDataWidget extends StatelessWidget {
  const MonitoringDataWidget({
    super.key,
    required this.item,
    required this.index,
  });

  final Map item;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 20, left: 15, right: 15),
          child: Wrap(
            spacing: 0,
            runSpacing: 20,
            children: [
              //growth
              Container(
                height: mediaqueryHeight(.16, context),
                width: mediaqueryWidth(.30, context),

                child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text("Growth", style: homeXSmallFont),
                      SizedBox(height: mediaqueryHeight(0.006, context)),
                      Container(
                        height: mediaqueryHeight(.12, context),
                        width: mediaqueryWidth(.21, context),
                        decoration: BoxDecoration(
                          color: whiteClr,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [BoxShadow(blurRadius: 1)],
                        ),
                        child: Column(
                          children: [
                            SizedBox(height: mediaqueryHeight(0.007, context)),
                            Container(
                              height: mediaqueryHeight(.08, context),
                              width: mediaqueryWidth(.16, context),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),

                                image: DecorationImage(
                                  image: AssetImage(
                                    "assets/Basal Glume Rot_ 7 Proven Strategies to Save Your Crops.jpeg",
                                  ),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            SizedBox(height: mediaqueryHeight(0.001, context)),
                            Center(
                              child:
                                  item['type'] == 'micro'
                                      ? Text(
                                        "${item[index.toString()]['growth']}%",
                                        style: homeXSmallFont,
                                      )
                                      : Text(
                                        "${item["area"]['growth']}%",
                                        style: homeXSmallFont,
                                      ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
             // water level
              Container(
                height: mediaqueryHeight(.16, context),
                width: mediaqueryWidth(.30, context),

                child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text("Water Level", style: homeXSmallFont),
                      SizedBox(height: mediaqueryHeight(0.006, context)),
                      Container(
                        height: mediaqueryHeight(.12, context),
                        width: mediaqueryWidth(.21, context),
                        decoration: BoxDecoration(
                          color: whiteClr,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [BoxShadow(blurRadius: 1)],
                        ),
                        child: Column(
                          children: [
                            SizedBox(height: mediaqueryHeight(0.007, context)),
                            Container(
                              height: mediaqueryHeight(.08, context),
                              width: mediaqueryWidth(.16, context),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),

                                image: DecorationImage(
                                  image: AssetImage(
                                    "assets/Vecteur propre goutte bleu brillant avec des cercles sur l'eau bouchent la vue de face _ Vecteur Gratuite.jpeg",
                                  ),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            SizedBox(height: mediaqueryHeight(0.001, context)),
                            Center(
                              child:  item['type'] == 'micro'? Text(
                                "${item[index.toString()]['waterLevel']}%",
                                style: homeXSmallFont,
                              ) : Text(
                                        "${item["area"]['waterLevel']}%",
                                        style: homeXSmallFont,
                                      ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              // temp
              Container(
                height: mediaqueryHeight(.16, context),
                width: mediaqueryWidth(.30, context),

                child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text("Temp", style: homeXSmallFont),
                      SizedBox(height: mediaqueryHeight(0.006, context)),
                      Container(
                        height: mediaqueryHeight(.12, context),
                        width: mediaqueryWidth(.21, context),
                        decoration: BoxDecoration(
                          color: whiteClr,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [BoxShadow(blurRadius: 1)],
                        ),
                        child: Column(
                          children: [
                            SizedBox(height: mediaqueryHeight(0.007, context)),
                            Container(
                              height: mediaqueryHeight(.08, context),
                              width: mediaqueryWidth(.16, context),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),

                                image: DecorationImage(
                                  image: AssetImage(
                                    "assets/Temperature Icon _ Hugeicons.jpeg",
                                  ),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            SizedBox(height: mediaqueryHeight(0.001, context)),
                            Center(
                              child:   item['type'] == 'micro'?Text(
                                "${item[index.toString()]['temp']}%",
                                style: homeXSmallFont,
                              )  : Text(
                                        "${item["area"]['temp']}%",
                                        style: homeXSmallFont,
                                      ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              // humidity
              Container(
                height: mediaqueryHeight(.16, context),
                width: mediaqueryWidth(.30, context),

                child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text("Humidity", style: homeXSmallFont),
                      SizedBox(height: mediaqueryHeight(0.006, context)),
                      Container(
                        height: mediaqueryHeight(.12, context),
                        width: mediaqueryWidth(.21, context),
                        decoration: BoxDecoration(
                          color: whiteClr,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [BoxShadow(blurRadius: 1)],
                        ),
                        child: Column(
                          children: [
                            SizedBox(height: mediaqueryHeight(0.007, context)),
                            Container(
                              height: mediaqueryHeight(.08, context),
                              width: mediaqueryWidth(.16, context),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),

                                image: DecorationImage(
                                  image: AssetImage("assets/humidity.png"),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            SizedBox(height: mediaqueryHeight(0.001, context)),
                            Center(
                              child:   item['type'] == 'micro'?Text(
                                "${item[index.toString()]['humidity']}%",
                                style: homeXSmallFont,
                              ):   Text(
                                        "${item["area"]['humidity']}%",
                                        style: homeXSmallFont,
                                      ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              // pest
              Container(
                height: mediaqueryHeight(.16, context),
                width: mediaqueryWidth(.30, context),

                child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text("Pest Detection", style: homeXSmallFont),
                      SizedBox(height: mediaqueryHeight(0.006, context)),
                      Container(
                        height: mediaqueryHeight(.12, context),
                        width: mediaqueryWidth(.21, context),
                        decoration: BoxDecoration(
                          color: whiteClr,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [BoxShadow(blurRadius: 1)],
                        ),
                        child: Column(
                          children: [
                            SizedBox(height: mediaqueryHeight(0.007, context)),
                            Container(
                              height: mediaqueryHeight(.08, context),
                              width: mediaqueryWidth(.16, context),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),

                                image: DecorationImage(
                                  image: AssetImage(
                                    "assets/Dowanbach _  Freepik.jpeg",
                                  ),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            SizedBox(height: mediaqueryHeight(0.001, context)),
                            Center(
                              child:   item['type'] == 'micro'?Text(
                                "${item[index.toString()]['pest']}",
                                style:item[index.toString()]['pest']=="Hazard"? homeXhusSmallFont:homeXSmallFont,
                              ):  Text(
                                        "${item["area"]['pest']}",
                                        style:item["area"]['pest']=="Hazard"? homeXhusSmallFont:homeXSmallFont,
                                      ),
                            ),
                          ],
                      ),
                      ),
                   ],
                 ),
               ),
             ),
            ],
          ),
        ),

        //nd row
      ],
    );
  }
}
