import 'package:flutter/material.dart';
import 'package:toiec_learning_app/core/configs/utils/textstyle.dart';

class CustomItem extends StatelessWidget {
  final IconData icon;
  final String title;
  final Widget? trailing;
  final Color? textColor;
  final Color? iconColor;
  final VoidCallback? onTap;

  const CustomItem({
    super.key,
    required this.icon,
    required this.title,
    this.trailing,
    this.textColor,
    this.iconColor,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon, color: iconColor ?? Colors.grey),
      title: Text(
        title,
        style: Theme.of(context).textTheme.bodyLarge,
      ),
      trailing: trailing ?? const Icon(Icons.arrow_forward_ios, size: 16),
      onTap: onTap,
    );
  }
}
