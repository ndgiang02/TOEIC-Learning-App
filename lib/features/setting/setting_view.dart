import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:toiec_learning_app/core/configs/utils/textstyle.dart';
import 'package:toiec_learning_app/features/setting/setting_viewmodel.dart';
import 'package:toiec_learning_app/features/setting/widget/avatar_profile.dart';
import 'package:toiec_learning_app/features/setting/widget/menu_item.dart';

class SettingView extends StatelessWidget {
  const SettingView({super.key});

  @override
  Widget build(BuildContext context) {
    final settingViewModel = Provider.of<SettingViewModel>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Setting', style: CustomTextStyle.appbar),
        backgroundColor: Colors.lightBlue,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Align(
              alignment: Alignment.center,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  AvatarProfile(url: ""),
                  const SizedBox(height: 16),
                  Text('Zianq', style: CustomTextStyle.header),
                  const SizedBox(height: 4),
                  Text('muaha.vang02@gmail.com', style: CustomTextStyle.normal),
                  const SizedBox(height: 24),
                ],
              ),
            ),
            Expanded(
              child: ListView(
                children: [
                  CustomListTile(
                    icon: Icons.edit,
                    title: "Edit Profile",
                  ),
                  CustomListTile(
                    icon: Icons.security,
                    title: "Security",
                  ),
                  CustomListTile(
                    trailing: Text("English",
                        style: TextStyle(
                            fontSize: 14,
                            color: Colors.black,
                            fontWeight: FontWeight.bold)),
                    icon: Icons.language,
                    title: 'Language',
                  ),
                  CustomListTile(
                    onTap: () {
                      settingViewModel.toggleSwitch();
                    },
                    trailing: _buildCustomSwitch(
                      settingViewModel.isDarkMode,
                    ),
                    icon: Icons.dark_mode,
                    title: "Dark Mode",
                  ),
                  CustomListTile(
                    icon: Icons.help,
                    title: "Help Center",
                  ),
                  CustomListTile(
                    icon: Icons.privacy_tip,
                    title: "Privacy Policy",
                  ),
                  CustomListTile(
                    textColor: Colors.red,
                    iconColor: Colors.red,
                    icon: Icons.logout,
                    title: 'Logout',
                  ),
                ].map((e) => e).toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCustomSwitch(bool isDarkMode) {
    return Container(
      width: 44,
      height: 24,
      padding: const EdgeInsets.all(2),
      decoration: BoxDecoration(
        color: isDarkMode ? Colors.green : Colors.grey.withValues(alpha: 0.5),
        border: Border.all(
          color: isDarkMode
              ? Colors.white.withValues(alpha: 0.5)
              : Colors.white.withValues(alpha: 0.5),
          width: isDarkMode ? 1 : 0,
        ),
        borderRadius: BorderRadius.circular(12),
      ),
      alignment: isDarkMode ? Alignment.centerRight : Alignment.centerLeft,
      child: Container(
        height: 24,
        width: 22,
        decoration: BoxDecoration(
          color: isDarkMode ? Colors.white : Colors.white,
          shape: BoxShape.circle,
        ),
      ),
    );
  }
}
