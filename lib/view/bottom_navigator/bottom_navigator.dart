import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:krishi_track/view/bottom_navigator/bloc/bottom_sheet_bloc.dart';
import 'package:krishi_track/view/home_screen/home_screen.dart';
import 'package:krishi_track/view/profile_page/profile_screen.dart';
import 'package:krishi_track/view/utils/custom_colors.dart';

class BottomNavigatorScreen extends StatelessWidget {
  BottomNavigatorScreen({super.key});

  int index = 0;
  List<Widget>screens=[HomeScreen(),Text("Schedule"),Text("chat bot"),ProfileScreen()];
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<BottomSheetBloc, BottomSheetState>(
      listener: (context, state) {
        // TODO: implement listener
        if (state is SelectedItemState) {
          index = state.index;
        }
      },
      builder: (context, state) {
        return Scaffold(
          body: Center(child: screens[index]),
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: index,
            onTap: (value) {
              context.read<BottomSheetBloc>().add(SelectingEvent(index: value));
            },
            type: BottomNavigationBarType.fixed,
            unselectedItemColor: blackClr,
            selectedFontSize: 12,
            unselectedFontSize: 10,
            items: [
              BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage(
                    index == 0
                        ? "assets/home-button.png"
                        : "assets/home (1).png",
                  ),
                  size: 35,
                ),
                label: "Home",
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage(
                    index == 1
                        ? "assets/schedule.png"
                        : "assets/schedule (1).png",
                  ),
                  size: 30,
                ),
                label: "Schedule",
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage(
                    index == 2
                        ? "assets/chatbot (1).png"
                        : "assets/chatbot.png",
                  ),
                  size: 30,
                ),
                label: "Chat bot",
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage(
                    index == 3 ? "assets/user (2).png" : "assets/user (1).png",
                  ),
                  size: 30,
                ),
                label: "Profile",
              ),
            ],
          ),
        );
      },
    );
  }
}
