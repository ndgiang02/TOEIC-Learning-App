import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:toiec_learning_app/core/configs/constant.dart';
import 'package:toiec_learning_app/widgets/icon.dart';

import '../exam/exam_view.dart';
import '../home/home_view.dart';
import '../setting/setting_view.dart';
import 'main_viewmodel.dart';

class MainView extends StatelessWidget {
  MainView({super.key});

  final List<Widget> _pages = [
    HomeView(),
    ExamView(),
    ExamView(),
    ExamView(),
    SettingView(),
  ];

  @override
  Widget build(BuildContext context) {
    return Consumer<MainViewModel>(
      builder: (context, bottomNavViewModel, child) {
        return Scaffold(
          body: IndexedStack(
            index: bottomNavViewModel.currentIndex,
            children: _pages,
          ),
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: bottomNavViewModel.currentIndex,
            onTap: (index) {
              bottomNavViewModel.setIndex(index);
            },
            items: [
              BottomNavigationBarItem(
                icon: CustomIcon(iconPath: icHome, isActive: false,),
                activeIcon: CustomIcon(iconPath: icHomeAct, isActive: true, ),
                label: "Home",
              ),
              BottomNavigationBarItem(
                icon: CustomIcon(iconPath: icClock, isActive: false,),
                activeIcon: CustomIcon(iconPath: icClockAct, isActive: true, ),
                label: "Exam",
              ),
              BottomNavigationBarItem(
                icon: CustomIcon(iconPath: icSearch, isActive: false,),
                activeIcon: CustomIcon(iconPath: icSearchAct, isActive: true, ),
                label: "Search",
              ),
              BottomNavigationBarItem(
                icon: CustomIcon(iconPath: icBookMark, isActive: false,),
                activeIcon: CustomIcon(iconPath: icBookMarkAct, isActive: true, ),
                label: "Grammar",
              ),
              BottomNavigationBarItem(
                icon: CustomIcon(iconPath: icSetting, isActive: false,),
                activeIcon: CustomIcon(iconPath: icSettingAct, isActive: true, ),
                label: "Setting",
              ),
            ],
          ),
        );
      },
    );
  }
}
