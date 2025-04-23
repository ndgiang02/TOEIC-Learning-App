import 'package:flutter/material.dart';
import '../core/configs/utils/color.dart';

class GradientAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final TextStyle? titleStyle;
  final List<Color> colors;
  final Alignment begin;
  final Alignment end;
  final bool centerTitle;


  GradientAppBar({
    super.key,
    required this.title,
    this.titleStyle,
    List<Color>? colors,
    this.begin = Alignment.topLeft,
    this.end = Alignment.bottomRight,
    this.centerTitle = true,
  }) : colors = colors ?? [ConstantColors.primary, ConstantColors.secondary];

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(title, style: titleStyle),
      centerTitle: centerTitle,
      flexibleSpace: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: colors,
            begin: begin,
            end: end,
          ),
        ),
      ),
      backgroundColor: Colors.transparent,
      elevation: 0,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
