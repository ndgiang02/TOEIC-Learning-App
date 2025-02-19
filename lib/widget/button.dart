import 'package:flutter/material.dart';
import 'package:toiec_learning_app/configs/reponsive.dart';

class CustomButton extends StatelessWidget {
  final Widget? icon;
  final String text;
  final Color backgroundColor;
  final Color textColor;
  final VoidCallback onPressed;
  final bool showBorder;
  final FontWeight fontWeight;
  final double sizeText;

  const CustomButton({
    super.key,
    this.icon,
    required this.text,
    required this.onPressed,
    required this.backgroundColor,
    required this.textColor,
    required this.showBorder,
    required this.fontWeight,
    required this.sizeText,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: Responsive.width(65, context),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.symmetric(horizontal: 14, vertical: 10),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          backgroundColor: backgroundColor,
          side: showBorder ? BorderSide(color: Colors.black45, width: 1) : BorderSide.none,
        ),
        onPressed: onPressed,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            if (icon != null) ...[
              icon!,
              SizedBox(width: 8),
            ],
            SizedBox(width: 8),
            Text(
              text,
              style: TextStyle(fontSize: sizeText, fontWeight: fontWeight, color: textColor),
            ),
          ],
        ),
      ),
    );
  }
}
