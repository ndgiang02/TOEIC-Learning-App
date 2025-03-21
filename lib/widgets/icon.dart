import 'package:flutter/material.dart';
import 'package:toiec_learning_app/core/configs/utils/color.dart';
import '../core/configs/reponsive.dart';

class CustomIcon extends StatelessWidget {
  final String iconPath;
  final double? size;
  final Color? color;
  final bool isActive;


  const CustomIcon({
    super.key,
    required this.iconPath,
    this.size,
    this.color, required this.isActive,
  });

  @override
  Widget build(BuildContext context) {

    bool isDarkMode = Theme.of(context).brightness == Brightness.dark;
    Color effectiveColor = color ??
        (isActive ? ConstantColors.primary : (isDarkMode ? Colors.white : Colors.black));


    return SizedBox(
      width: size ?? Responsive.width(6, context),
      height: size ?? Responsive.width(6, context),
      child: Image.asset(
        iconPath,
        color: effectiveColor,
        fit: BoxFit.contain,
      ),
    );
  }
}
