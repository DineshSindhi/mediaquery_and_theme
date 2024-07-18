import 'package:flutter/foundation.dart';

class ThemeProvider extends ChangeNotifier{
  bool _isDark=false;

  bool get Theme{
    return _isDark;}
   set Theme(bool value){
    _isDark=value;
    notifyListeners();
  }
}