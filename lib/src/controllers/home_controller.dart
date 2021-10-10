import 'package:flutter/widgets.dart';

class HomeController extends ChangeNotifier {
  /// This attribute will inform the vericity to change theme
  bool isDark = false;

  /// Pattern single
  static HomeController instance = HomeController();

  changeTheme() {
    /// This function will toggle the variable value
    isDark = !isDark;

    /* This call function will notify
      to rebuild the interface when isDark changes
     */
    notifyListeners();
  }
}
