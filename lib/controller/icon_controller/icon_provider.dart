import 'package:flutter/material.dart';

class IconsProvider extends ChangeNotifier {
  IconData? selectedIcon;
  void updateSelectedIcon(IconData icon) {
    selectedIcon = icon;
    notifyListeners();
  }
}
