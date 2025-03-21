import 'package:flutter/material.dart';
import 'package:toiec_learning_app/core/configs/utils/color.dart';

ThemeData themeData(BuildContext context, bool isDarkMode) {
  return ThemeData(
    fontFamily: 'SFPro',
    colorScheme: ColorScheme.fromSeed(
      seedColor: const Color(0xFFE21221),
      primary: const Color(0xFFE21221),
      error: const Color(0xFFE21221),
      brightness: isDarkMode ? Brightness.dark : Brightness.light,
    ),
    useMaterial3: true,
    textTheme: textTheme(isDarkMode),
    dividerTheme: DividerThemeData(
      color: isDarkMode ? Colors.grey[700]! : const Color(0xFFEEEEEE),
    ),
    scaffoldBackgroundColor: isDarkMode ? Colors.black : Colors.white,
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      type: BottomNavigationBarType.fixed,
      backgroundColor: isDarkMode ? Colors.black : Colors.white,
      selectedItemColor: ConstantColors.primary,
      unselectedItemColor: isDarkMode ? Colors.white : const Color(0xff9E9E9E),
      unselectedLabelStyle: Theme.of(context)
          .textTheme
          .displaySmall!
          .copyWith(color: isDarkMode ? Colors.black : const Color(0xff9E9E9E), fontSize: 14),
      selectedLabelStyle: Theme.of(context)
          .textTheme
          .displaySmall!
          .copyWith(color: ConstantColors.primary, fontSize: 14, fontWeight: FontWeight.w700),
    ),
    appBarTheme: AppBarTheme(
      scrolledUnderElevation: 0,
      backgroundColor: isDarkMode ? Colors.black : ConstantColors.primary,
      titleTextStyle: Theme.of(context).textTheme.displayMedium!.copyWith(
        color: isDarkMode ? Colors.white : Colors.black,
      ),
    ),
    inputDecorationTheme: inputDecorationTheme(isDarkMode),
  );
}

InputDecorationTheme inputDecorationTheme(bool isDarkMode) {
  return InputDecorationTheme(
      contentPadding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
      fillColor: Color(0xffFAFAFA),
      focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(width: 0, color: Color(0xffFAFAFA)),
          gapPadding: 0),
      disabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(width: 0, color: Color(0xffFAFAFA)),
          gapPadding: 0),
      enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(width: 0, color: Color(0xffFAFAFA)),
          gapPadding: 0),
      errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(width: 0, color: Color(0xffFAFAFA)),
          gapPadding: 0),
      filled: true,
      hintStyle: const TextStyle(
        fontSize: 14,
        color: Color(0xFF9E9E9E),
        fontWeight: FontWeight.normal,
      ));
}

TextTheme textTheme(bool isDarkMode) {
  return TextTheme(
    displayLarge:  TextStyle(
      fontSize: 32,
      fontWeight: FontWeight.bold,
      color:isDarkMode ? Colors.black : Colors.white ,
    ),
    displayMedium: TextStyle(
      fontSize: 28,
      fontWeight: FontWeight.bold,
      color:isDarkMode ? Colors.black : Colors.white ,
    ),
    displaySmall:  TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.bold,
      color: isDarkMode ? Colors.white : Colors.black ,
    ),


    // Body text styles
    bodyLarge:  TextStyle(
      fontSize: 16,
      color: isDarkMode ? Colors.white : const Color(0xff9E9E9E) ,
      fontWeight: FontWeight.w200,
      height: 1.5,
    ),
    bodyMedium:  TextStyle(
      fontSize: 16,
      color: isDarkMode ? Colors.white38 : Colors.black87 ,
      height: 1.5,
    ),
    bodySmall:  TextStyle(
      fontSize: 12,
      color: isDarkMode ? Colors.white54 : Colors.black54 ,
      height: 1.5,
    ),

    // Title styles
    titleLarge: TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.w700,
      color: isDarkMode ? Colors.green : Colors.red ,
    ),
    titleMedium: TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.w500,
      color: isDarkMode ? Colors.white : Colors.black ,
    ),
    titleSmall: TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.bold,
      color: Colors.black ,
    ),

    // Label styles
    labelLarge: const TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w500,
      letterSpacing: 0.5,
    ),
    labelMedium: const TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w500,
      letterSpacing: 0.5,
    ),
    labelSmall: const TextStyle(
      fontSize: 10,
      fontWeight: FontWeight.w500,
      letterSpacing: 0.5,
    ),
  );
}

