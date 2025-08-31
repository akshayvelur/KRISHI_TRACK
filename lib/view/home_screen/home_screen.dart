import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:krishi_track/controller/consts.dart';
import 'package:krishi_track/controller/user_data.dart';
import 'package:krishi_track/view/home_screen/bloc/home_bloc.dart';
import 'package:krishi_track/view/utils/custom_colors.dart';
import 'package:krishi_track/view/utils/custom_fonts.dart';
import 'package:krishi_track/view/utils/mediaquery.dart';
import 'package:krishi_track/view/widgets/home_widget/home_appbar.dart';
import 'package:krishi_track/view/widgets/home_widget/myfield_widget.dart';
import 'package:krishi_track/view/widgets/home_widget/weather_widget.dart';
import 'package:weather/weather.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});



  Weather? _weather;

  @override
  Widget build(BuildContext context) {
     WidgetsBinding.instance.addPostFrameCallback((_) {
   
      context.read<HomeBloc>().add(WeatherDataEvent());
    });
    return BlocConsumer<HomeBloc, HomeState>(
      listener: (context, state) {
        // TODO: implement listener
        if(state is WeatherPickedState){
          _weather=state.weather;
        }
      },
      builder: (context, state) {
        return Scaffold(
          appBar: PreferredSize(
            preferredSize: Size(0, mediaqueryHeight(.06, context)),
            child: HomeAppBar(),
          ),
          body: Padding(
            padding: const EdgeInsets.only(left: 15, right: 15),
            child: Column(crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                WeatherWidget(weather: _weather),
                MyFieldWidget(),
                Column(
                  children: [
                    Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Text("Microgreens",style: homeSmallFont,),
                        ),  Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Text("SeeAll",style: homeSmallFontG,),
                        ),
                      ],
                    ),
                  // StreamBuilder(stream: UserData.Alldata, builder: (context, AsyncSnapshot snapshot) {
                  //   if(snapshot.connectionState==ConnectionState.waiting){
                  //     return Center(child: CircularProgressIndicator(color: greenClr,),);
                  //   }
                  // },
                 // )
                  ],
                )
           ],
            ),
          ),
        );
      },
    );
  }
}
