import 'package:flutter/foundation.dart';

class AppStateManager extends ChangeNotifier {
  bool isDarMode = false;

  changeTheme() {
    isDarMode = !isDarMode;
    notifyListeners();
  }
}
