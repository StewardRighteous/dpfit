import 'package:dpfit/dpfit_theme.dart';
import 'package:flutter/foundation.dart';

class ThemeManager extends ChangeNotifier {
  bool darkTheme = true;
  var theme = DpFitTheme.dark();

  changeTheme() {
    darkTheme = !darkTheme;
    notifyListeners();
  }

  getTheme() {
    if (darkTheme == true) {
      theme = DpFitTheme.dark();
    } else {
      theme = DpFitTheme.light();
    }
    return theme;
  }

  bool isDark() {
    bool dark = true;
    if (darkTheme != true) {
      dark = false;
    }
    return dark;
  }
}
