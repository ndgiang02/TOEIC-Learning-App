import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:toiec_learning_app/core/configs/constant.dart';
import 'package:toiec_learning_app/core/configs/reponsive.dart';
import 'package:toiec_learning_app/core/configs/utils/textstyle.dart';
import 'package:toiec_learning_app/widgets/item.dart';
import '../login/login_view_model.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    double itemWidth = Responsive.width(100, context) / 4 - 25;
    return Consumer<AuthViewModel>(
      builder: (context, authViewModel, child) {
        return Scaffold(
          appBar: AppBar(
            title: Text('HOME', style: CustomTextStyle.appbar),
            backgroundColor: Colors.lightBlue,
            centerTitle: true,
          ),
          body: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                const Row(
                  children: [
                    Text(
                      'PRACTICE',
                      style: CustomTextStyle.header
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                GridView(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    mainAxisExtent: 90,
                  ),
                  children: [
                    CustomItem(
                      text: 'Listen',
                      onTap: () {},
                      assetImage: icListening,
                      width: itemWidth,
                    ),
                    CustomItem(
                      text: 'Read',
                      onTap: () {},
                      assetImage: icReading,
                      width: itemWidth,
                    ),
                    CustomItem(
                      text: 'Speak',
                      onTap: () {},
                      assetImage: icSpeaking,
                      width: itemWidth,
                    ),
                    CustomItem(
                      text: 'Write',
                      onTap: () {
                        print('HELLO');
                      },
                      assetImage: icWriting,
                      width: itemWidth,
                    ),
                  ],
                ),
                const SizedBox(height: 10,),
                const Row(
                  children: [
                    Text(
                        'Daily',
                        style: CustomTextStyle.header
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
