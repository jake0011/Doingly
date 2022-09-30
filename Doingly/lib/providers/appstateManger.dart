import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppStateManager extends ChangeNotifier {

  changeTheme() {
    Get.isDarkMode
        ? Get.changeTheme(ThemeData.light())
        : Get.changeTheme(ThemeData.dark());
    notifyListeners();
  }
}
