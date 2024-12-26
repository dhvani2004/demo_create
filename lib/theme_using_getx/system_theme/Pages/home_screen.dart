import 'package:demo_create/theme_using_getx/system_theme/theme/custom_color.dart';
import 'package:demo_create/theme_using_getx/system_theme/theme/theme_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  final ThemeController themeController = Get.find<ThemeController>();

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      bool isDarkMode = themeController.themeMode.value == ThemeMode.dark;

      return Scaffold(
        appBar: AppBar(
          title: Text(
            'GetX Theme Example',
            style: TextStyle(
              color: CustomColors.getTextColor(isDarkMode), // Dynamic text color
            ),
          ),
          backgroundColor: CustomColors.getPrimary(isDarkMode), // Dynamic primary color
        ),
        body: Container(
          color: CustomColors.getBackground(isDarkMode), // Dynamic background color
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Display current theme mode
                Text(
                  'Current Theme: ${isDarkMode ? "Dark" : "Light"}',
                  style: TextStyle(
                    fontSize: 18,
                    color: CustomColors.getTextColor(isDarkMode), // Dynamic text color
                  ),
                ),
                const SizedBox(height: 20),

                // Button to toggle theme manually
                ElevatedButton(
                  onPressed: themeController.toggleTheme,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: CustomColors.getPrimary(isDarkMode), // Dynamic button color
                    foregroundColor: CustomColors.getTextColor(isDarkMode), // Text color
                  ),
                  child: Text('Toggle Theme'),
                ),
              ],
            ),
          ),
        ),
      );
    });
  }
}
