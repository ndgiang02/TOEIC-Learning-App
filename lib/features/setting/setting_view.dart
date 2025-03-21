import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:toiec_learning_app/core/configs/app_url.dart';
import 'package:toiec_learning_app/core/configs/utils/textstyle.dart';
import 'package:toiec_learning_app/features/setting/setting_viewmodel.dart';
import 'package:toiec_learning_app/features/setting/widget/avatar_profile.dart';
import 'package:toiec_learning_app/features/setting/widget/menu_item.dart';

import '../auth/auth_viewmodel.dart';

class SettingView extends StatelessWidget {
  const SettingView({super.key});

  @override
  Widget build(BuildContext context) {
    final authViewModel = Provider.of<AuthViewModel>(context);
    final settingViewModel = Provider.of<SettingViewModel>(context);

    return Scaffold(
      appBar:AppBar(
        centerTitle: true,
        title: Text('Setting'),
        titleTextStyle: Theme.of(context).textTheme.bodyMedium,
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
                  AvatarProfile(url: '${AppUrl.imgUrl}/${authViewModel.user?.avatar}'),
                  const SizedBox(height: 16),
                  Text('${authViewModel.user?.fullName}', style: CustomTextStyle.header),
                  const SizedBox(height: 4),
                  Text('${authViewModel.user?.email}', style: CustomTextStyle.normal),
                  const SizedBox(height: 24),
                ],
              ),
            ),
            Expanded(
              child: ListView(
                children: [
                  CustomItem(
                    icon: Icons.edit,
                    title: "Edit Profile",
                  ),
                  CustomItem(
                    icon: Icons.security,
                    title: "Security",
                  ),
                  CustomItem(
                    trailing: Text("English",
                        style: TextStyle(
                            fontSize: 14,
                            color: Colors.black,
                            fontWeight: FontWeight.bold)),
                    icon: Icons.language,
                    title: 'Language',
                  ),
                  CustomItem(
                    onTap: () {
                      settingViewModel.toggleSwitch();
                    },
                    trailing: _buildCustomSwitch(
                      settingViewModel.isDarkMode,
                    ),
                    icon: Icons.dark_mode,
                    title: "Dark Mode",
                  ),
                  CustomItem(
                    icon: Icons.help,
                    title: "Help Center",
                  ),
                  CustomItem(
                    icon: Icons.privacy_tip,
                    title: "Privacy Policy",
                  ),
                  CustomItem(
                    textColor: Colors.red,
                    iconColor: Colors.red,
                    icon: Icons.logout,
                    title: 'Logout',
                    onTap: () {
                      settingViewModel.logout(context);
                    } ,
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
