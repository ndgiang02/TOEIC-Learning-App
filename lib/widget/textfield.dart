import 'package:flutter/material.dart';
import 'package:toiec_learning_app/configs/reponsive.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;
  final String? prefixText;
  final bool isPassword;
  final Icon? prefix;

  const CustomTextField({
    super.key,
    required this.hintText,
    this.prefixText,
    this.isPassword = false,
    this.prefix,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: Responsive.width(85, context),
        child: TextFormField(
          obscureText: isPassword, //? visibilityProvider.isObscure : false,
          decoration: InputDecoration(
            prefixIcon: (prefixText != null && prefixText!.isNotEmpty)
                ? Padding(
                    padding: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                    child: Text(
                      prefixText!,
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                  )
                : prefix,
            suffixIcon: isPassword
                ? IconButton(
                    icon: Icon(
                      Icons.visibility_off,
                      // : Icons.visibility,
                      color: Colors.grey,
                    ),
                    onPressed: () {
                      //  visibilityProvider.toggleVisibility();
                    },
                  )
                : null,
            hintText: hintText,
            hintStyle: TextStyle(
              color: Colors.grey,
              fontSize: Responsive.width(4, context),
            ),
            filled: true,
            fillColor: Colors.white,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(color: Colors.grey.shade300),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(color: Colors.blue, width: 2),
            ),
            contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 5),
          ),
        ),
      ),
    );
  }
}
