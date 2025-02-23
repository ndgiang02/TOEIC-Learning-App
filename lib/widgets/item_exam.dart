import 'package:flutter/material.dart';
import 'package:toiec_learning_app/core/configs/reponsive.dart';

class ExamItem extends StatelessWidget {
  final String title;
  final int question;
  final int time;
  final String buttonText;
  final VoidCallback onTap;

  const ExamItem({
    super.key,
    required this.title,
    required this.question,
    required this.time,
    required this.buttonText,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    double containerWidth = Responsive.width(90, context);
    return Container(
      width: containerWidth,
      padding: EdgeInsets.all(12),
      margin: EdgeInsets.symmetric(vertical: 6),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 5,
            spreadRadius: 2,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 8),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              RichText(
                text: TextSpan(
                  style: TextStyle(fontSize: 14, color: Colors.black, fontWeight: FontWeight.w500),
                  children: [
                    TextSpan(
                      text: "Time: ",
                      style: TextStyle(fontWeight: FontWeight.bold, color: Colors.blue),
                    ),
                    TextSpan(text: "$time min  |  "),
                    TextSpan(
                      text: "Questions: ",
                      style: TextStyle(fontWeight: FontWeight.bold, color: Colors.blue),
                    ),
                    TextSpan(text: "$question"),
                  ],
                ),
              ),
            ],
          ),

          SizedBox(height: 10),
          ElevatedButton(
            onPressed: onTap,
            style: ElevatedButton.styleFrom(
              backgroundColor: buttonText == "Continue" ? Colors.orange : Colors.green,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            ),
            child: Text(
              buttonText,
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.white),
            ),
          )
        ],
      ),
    );
  }
}
