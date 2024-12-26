import 'dart:ui';

class CustomColors {
  // Light Theme Colors
  static const Color lightPrimary = Color(0xFFFF6F61);
  static const Color lightBackground = Color(0xFFFFFFFF);
  static const Color lightScaffoldBackgroundColor = Color(0xFFFFFFFF);
  static const Color lightAccentColor = Color(0xFFFFD700);
  static const Color lightCardColor = Color(0xFFF8F9FA);
  static const Color lightDividerColor = Color(0xFFE0E0E0);
  static const Color lightBodyText1 =  Color(0xFF212121);
  static const Color lightBodyText2 =  Color(0xFF757575);
  static const Color lightSubTitle =  Color(0xFF9E9E9E);

  // Dark Theme Colors
  static const Color darkPrimary = Color(0xFFFF6F61);
  static const Color darkBackground = Color(0xFF121212);
  static const Color darkScaffoldBackgroundColor = Color(0xFF121212);
  static const Color darkAccentColor =  Color(0xFFFFD700);
  static const Color darkCardColor =  Color(0xFF1E1E1E);
  static const Color darkDividerColor = Color(0xFF373737);
  static const Color darkBodyText1 =  Color(0xFFFFFFFF);
  static const Color darkBodyText2 =  Color(0xFFB0B0B0);
  static const Color darkSubTitle =  Color(0xFF757575);
  // Get dynamic colors based on theme
  static Color getPrimary(bool isDarkMode) =>isDarkMode ? darkPrimary : lightPrimary;

  static Color getBackground(bool isDarkMode) =>isDarkMode ? darkBackground : lightBackground;

  static Color getTextColor(bool isDarkMode) => isDarkMode ? darkBodyText1 : lightBodyText1;
}
