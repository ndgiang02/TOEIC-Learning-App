import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:toiec_learning_app/core/configs/constant.dart';
import 'package:toiec_learning_app/core/configs/reponsive.dart';
import 'package:toiec_learning_app/core/configs/utils/textstyle.dart';
import 'package:toiec_learning_app/widgets/item.dart';
import '../../widgets/appbar.dart';
import '../auth/auth_viewmodel.dart';

class ExamView extends StatelessWidget {
  const ExamView({super.key});

  @override
  Widget build(BuildContext context) {
    double itemWidth = Responsive.width(100, context) / 4 - 25;
    return Consumer<AuthViewModel>(
      builder: (context, authViewModel, child) {
        return Scaffold(
          appBar: GradientAppBar(
            title: 'EXAM',
            titleStyle: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
          ),
          body: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                        'TOEIC Listening & Reading Full',
                        style: CustomTextStyle.exam
                    ),
                    TextButton(
                      onPressed: () {
                        context.push('/exam-detail');
                      },
                      child: const Text(
                          'See more',
                          style: CustomTextStyle.mini
                      ),
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
                      text: 'TEST 1',
                      onTap: () {
                      },
                      assetImage: icTest,
                      width: itemWidth,
                    ),
                    CustomItem(
                      text: 'Read',
                      onTap: () {},
                      assetImage: icTest,
                      width: itemWidth,
                    ),
                    CustomItem(
                      text: 'Speak',
                      onTap: () {},
                      assetImage: icTest,
                      width: itemWidth,
                    ),
                    CustomItem(
                      text: 'Write',
                      onTap: () {
                        log('HELLO');
                      },
                      assetImage: icTest,
                      width: itemWidth,
                    ),
                    CustomItem(
                      text: 'Listen',
                      onTap: () {},
                      assetImage: icTest,
                      width: itemWidth,
                    ),
                    CustomItem(
                      text: 'Read',
                      onTap: () {},
                      assetImage: icTest,
                      width: itemWidth,
                    ),
                    CustomItem(
                      text: 'Speak',
                      onTap: () {},
                      assetImage: icTest,
                      width: itemWidth,
                    ),
                    CustomItem(
                      text: 'Write',
                      onTap: () {
                        print('HELLO');
                      },
                      assetImage: icTest,
                      width: itemWidth,
                    ),
                  ],
                ),
                const SizedBox(height: 10,),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                        'TOIEC Listening & Reading Full',
                        style: CustomTextStyle.exam
                    ),
                    Text(
                        'See more',
                        style: CustomTextStyle.mini
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
