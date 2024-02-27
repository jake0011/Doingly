import 'package:flutter/material.dart';
import 'package:get/get.dart';

/// A class that manages the state of the app.
class AppStateManager extends ChangeNotifier {

  /// A method to change the theme of the app.
  ///
  /// If the current theme is dark, it changes it to light theme.
  /// If the current theme is light, it changes it to dark theme.
  /// Finally, it notifies the listeners about the theme change.
  void changeTheme() {
    Get.isDarkMode
        ? Get.changeTheme(ThemeData.light())
        : Get.changeTheme(ThemeData.dark());
    notifyListeners();
  }
}
