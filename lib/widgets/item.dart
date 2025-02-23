import 'package:flutter/material.dart';
import 'package:toiec_learning_app/core/configs/utils/textstyle.dart';

class CustomItem extends StatelessWidget {
  final String assetImage;
  final Color? colorImage;
  final String text;
  final VoidCallback onTap;
  final double width;

  const CustomItem({
    super.key,
    this.colorImage,
    required this.assetImage,
    required this.text,
    required this.onTap,
    required this.width,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: width,
        height: 80,
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 6,
              spreadRadius: 2,
              offset: Offset(0, 5),
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(assetImage, width: 28, height: 28),
            Flexible(
              child: Text(
                text,
                textAlign: TextAlign.center,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: CustomTextStyle.item,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
