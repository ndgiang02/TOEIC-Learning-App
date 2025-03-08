import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../exam/exam_view.dart';
import '../home/home_view.dart';
import '../setting/setting_view.dart';
import 'main_viewmodel.dart';

class MainView extends StatelessWidget {
  MainView({super.key});

  final List<Widget> _pages = [
    HomeView(),
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
              BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.search), label: "Exam"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person), label: "Setting"),
            ],
            selectedItemColor: Colors.blue,
            unselectedItemColor: Colors.grey,
          ),
        );
      },
    );
  }
}
