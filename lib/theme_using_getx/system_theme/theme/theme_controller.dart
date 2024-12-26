import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ThemeController extends GetxController with WidgetsBindingObserver {

  // Reactive variable to track ThemeMode
  var themeMode = ThemeMode.system.obs;

  @override
  void onInit() {
    super.onInit();

    // Register observer to listen for system theme changes
    WidgetsBinding.instance.addObserver(this);

    // Sync with the system theme initially
    syncWithSystem();
  }

  @override
  void onClose() {
    // Remove observer to avoid memory leaks
    WidgetsBinding.instance.removeObserver(this);
    super.onClose();
  }

  @override
  void didChangePlatformBrightness() {
    // Called when system brightness changes
    syncWithSystem();
  }

  // Sync theme with system brightness
  void syncWithSystem() {
    Brightness systemBrightness = WidgetsBinding.instance.window.platformBrightness;
    themeMode.value = systemBrightness == Brightness.dark ? ThemeMode.dark : ThemeMode.light;
  }

  // Manually toggle between light and dark themes
  void toggleTheme() {
    themeMode.value = themeMode.value == ThemeMode.light ? ThemeMode.dark : ThemeMode.light;
  }

  // Reset to system theme

}
