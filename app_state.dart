import 'package:flutter/material.dart';

class SettingsScreenNotifier extends ChangeNotifier { 

  bool _isDarkModeEnabled = false;                    
  get isDarkModeEnabled => _isDarkModeEnabled;  
        
  void toggleApplicationTheme(bool darkModeEnabled) { 
    _isDarkModeEnabled = darkModeEnabled;
    notifyListeners();
  }

}