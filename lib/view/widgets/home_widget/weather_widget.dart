
import 'package:flutter/material.dart';
import 'package:krishi_track/view/utils/custom_fonts.dart';
import 'package:krishi_track/view/utils/mediaquery.dart';
import 'package:weather/weather.dart';

class WeatherWidget extends StatelessWidget {
  const WeatherWidget({
    super.key,
    required Weather? weather,
  }) : _weather = weather;

  final Weather? _weather;

  @override
  Widget build(BuildContext context) {
    return Container(
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
      ),
     child:  _weather != null ? Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        
            Padding(
              padding: const EdgeInsets.only(left: 30, top: 30),
              child: Text(
                "${_weather!.tempFeelsLike!.celsius!.round()}°C",
                style: tempFont,
              ),
            ),
          Padding(
            padding: const EdgeInsets.only(left: 30, top: 120),
            child: Text(
              _weather!.weatherDescription!,
              style: climatFont,overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ):SizedBox(),
    );
  }
}
