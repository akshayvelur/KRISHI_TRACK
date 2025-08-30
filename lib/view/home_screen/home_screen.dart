import 'package:flutter/material.dart';
import 'package:krishi_track/controller/consts.dart';
import 'package:krishi_track/view/utils/custom_fonts.dart';
import 'package:krishi_track/view/utils/mediaquery.dart';
import 'package:krishi_track/view/widgets/home_widget/home_appbar.dart';
import 'package:weather/weather.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  final WeatherFactory _wf=WeatherFactory(OPENWEATHER_API_KEY); 

  Weather? _weather;  
@override
  void initState() {
    // TODO: implement initState
    super.initState();
    _wf.currentWeatherByCityName("kozhikode").then((w){
      setState(() {
        _weather=w;
      });
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(0, mediaqueryHeight(.06, context)),
        child: HomeAppBar(),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 15, right: 15),
        child: Column(
          children: [
            Container(
              height: mediaqueryHeight(.27, context),
              width: mediaqueryWidth(10, context),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  image: AssetImage(
                    "assets/Download free image of Green sky backgrounds landscape_ by Boom about abstract, hillside cartoon, background, design background, and cartoon 12111505.jpeg",
                  ),
                  fit: BoxFit.fill,
                ),
              ),child:Column(children: [
                if(_weather!=null) Text(_weather!.areaName.toString())
              ],),
            ),
          ],
        ),
      ),
    );
  }
}
