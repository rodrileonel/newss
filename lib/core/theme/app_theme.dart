import 'package:flutter/material.dart';

abstract class AppTheme {
  static ThemeData commonTheme = ThemeData.light().copyWith(
    dialogTheme: const DialogTheme(
      titleTextStyle: TextStyle(fontFamily: 'Solano', color: AppColors.black, fontSize: 28),
      contentTextStyle: TextStyle(fontFamily: 'WhitneyHTF', color: AppColors.black, fontSize: 16),
    ),
    textTheme: const TextTheme(
      titleLarge: TextStyle(fontFamily: 'Solano', color: AppColors.black, fontSize: 36),
      titleMedium: TextStyle(fontFamily: 'Solano', color: AppColors.black, fontSize: 20),
      titleSmall: TextStyle(fontFamily: 'Solano', color: AppColors.black, fontSize: 12),
      bodyLarge: TextStyle(fontFamily: 'WhitneyHTF', color: AppColors.darkGrey, fontSize: 16),
      bodyMedium: TextStyle(fontFamily: 'WhitneyHTF', color: AppColors.darkGrey, fontSize: 14),
      bodySmall: TextStyle(fontFamily: 'WhitneyHTF', color: AppColors.darkGrey, fontSize: 12),
      labelSmall: TextStyle(
          fontFamily: 'WhitneyHTF',
          color: AppColors.black,
          fontSize: 10,
          fontWeight: FontWeight.bold,
          letterSpacing: 0.4),
    ),
    primaryTextTheme: ThemeData.light().textTheme.apply(fontFamily: 'Solano'),
    primaryColor: AppColors.black,
    appBarTheme: ThemeData.light().appBarTheme.copyWith(
        backgroundColor: AppColors.background,
        titleTextStyle: const TextStyle(fontFamily: 'Solano', color: AppColors.black, fontSize: 20)),
    secondaryHeaderColor: AppColors.background,
    scaffoldBackgroundColor: AppColors.scaffold,
  );
}

abstract class AppColors {
  // Blue
  static const Color blue = Color(0xFF00B2FF);
  static const Color lightBlue = Color(0xFFBBEBFF);

  // Orange
  static const Color orange = Color(0xFFFF6D00);
  static const Color lightOrange = Color(0xFFFFE7C3);

  // Green
  static const Color green = Color(0xFF00A31A);
  static const Color lightGreen = Color(0xFFB6FFB4);

  // White
  static const Color white = Color(0xFFFFFFFF);

  // Grey
  static const Color grey = Color(0xFFA3B4CC);
  static const Color lightGrey = Color(0xFFCCD9EC);
  static const Color hightGrey = Color(0xFFA3B5CB);

  static const Color mediumGrey = Color(0xFF67778F);
  static const Color darkGrey = Color(0xFF42526A);

  // Others
  static const Color black = Color(0xFF343434);
  static const Color transparent = Colors.transparent;
  static const Color red = Color(0xFFE50A17);
  static const Color medall = Color(0xFFA3B4CC);
  static const Color subsecondaryButton = Color(0xFFE8F7F8);
  static const Color background = Color(0xFFD8DEFF);
  static const Color backgroundGrey = Color(0xFFE6EDF3);
  static const Color scaffold = Color(0xFFF8FAFD);
  static const Color secondaryHeaderColorInactive = Color(0xFFCBD9EC);
  static const Color missionMessage = Color(0xFFF3F6F9);
  static const Color link = Color(0xFF3817FF);
  static const Color textGrey = Color(0xFF67768F);
  static const Color bgGreyCard = Color(0xFFF4F6F9);
  static const Color pill50 = Color(0xFFCBD9EC);
  static const Color pill100 = Color(0xFFFFF2D4);
  static const Color pill150 = Color(0xFFD8DEFF);
  static const Color pillStar50 = Color(0xFF67778F);
  static const Color pillStar100 = Color(0xFFFDBA30);
  static const Color pillStar150 = Color(0xFF7D59CE);
  static const Color pillText50 = Color(0xFF42516A);
  static const Color pillText100 = Color(0xFF6D3000);
  static const Color pillText150 = Color(0xFF35158C);
  static const Color dotActive = Color(0xFFE50817);
  static const Color dotInactive = Color(0xFFCBD9EC);

  static const Color circleStart1 = Color(0xffC7CFFF);
  static const Color circleStart2 = Color(0xffB6C1FF);
  static const Color circleStart3 = Color(0xffCCD4FF);
  static const Color bgHeader = background;
  static const Color meteorBg = Color(0xffF0F2FF);
  static const Color cardPoints = Color(0xff6343ad);

  // Shadows
  static const Color shadowColor = Color(0xFFCBD5DC);
  static const Color bgToolTip = Color(0xFF0A0A0A);
}

abstract class AppShadows {
  static BoxShadow shadowCard = BoxShadow(
      color: AppColors.shadowColor.withOpacity(0.6), blurRadius: 24, spreadRadius: 0, offset: const Offset(0, 8));
  static BoxShadow shadowBar = BoxShadow(
      color: AppColors.shadowColor.withOpacity(0.4), blurRadius: 24, spreadRadius: 0, offset: const Offset(0, 1));
}

abstract class AppDecorations {
  static BoxDecoration cardDecoration = BoxDecoration(
    color: AppColors.white,
    borderRadius: BorderRadius.circular(20),
    boxShadow: [AppShadows.shadowCard],
  );
}
