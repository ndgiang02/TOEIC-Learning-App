import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:toiec_learning_app/widgets/textfield.dart';

import '../../widgets/appbar.dart';
import '../auth/auth_viewmodel.dart';

class SearchView extends StatelessWidget {
  SearchView({super.key});

  final List<String> _allSuggestions = [
    'apple',
    'banana',
    'grape',
    'orange',
    'watermelon',
    'mango',
    'melon'
  ];

  @override
  Widget build(BuildContext context) {
    return Consumer<AuthViewModel>(
      builder: (context, authViewModel, child) {
        return Scaffold(
          appBar: GradientAppBar(
            title: 'TRA CỨU',
            titleStyle: TextStyle(
                color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
          ),
          body: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                CustomTextField(
                  hintText: 'Từ khóa',
                  prefix: Icon(Icons.search),
                ),
                const SizedBox(height: 10),
                Expanded(
                  child: ListView.builder(
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return ListTile(
                        title: Text(_allSuggestions[index]),
                        onTap: () {
                          print("Hello");
                        },
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
