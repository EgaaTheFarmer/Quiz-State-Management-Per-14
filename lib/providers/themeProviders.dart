import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ThemeProvider extends ChangeNotifier {
  String _themeName = 'Tema A';
  String _fontName = 'Open Sans';

  ThemeData getTheme() {
    switch (_themeName) {
      case 'Tema B':
        return ThemeData(primarySwatch: Colors.brown, scaffoldBackgroundColor: Colors.brown[50]);
      case 'Tema C':
        return ThemeData(primarySwatch: Colors.grey, scaffoldBackgroundColor: Colors.grey[50]);
      case 'Tema D':
        return ThemeData(primarySwatch: Colors.pink, scaffoldBackgroundColor: Colors.pink[50]);
      case 'Tema E':
        return ThemeData(primarySwatch: Colors.red, scaffoldBackgroundColor: Colors.red[50]);
      case 'Tema F':
        return ThemeData(primarySwatch: Colors.yellow, scaffoldBackgroundColor: Colors.yellow[50]);
      default:
        return ThemeData(primarySwatch: Colors.blue, scaffoldBackgroundColor: Colors.blue[50]);
    }
  }

  TextStyle getTextStyle() {
    switch (_fontName) {
      case 'Montserrat':
        return GoogleFonts.montserrat(fontSize: 18, color: Colors.black);
      case 'Nunito':
        return GoogleFonts.nunito(fontSize: 18, color: Colors.black);
      case 'Poppins':
        return GoogleFonts.poppins(fontSize: 18, color: Colors.black);
      default:
        return GoogleFonts.openSans(fontSize: 18, color: Colors.black);
    }
  }

  void setTheme(String themeName) {
    _themeName = themeName;
    notifyListeners();
  }

  void setFont(String fontName) {
    _fontName = fontName;
    notifyListeners();
  }

  String get themeName => _themeName;
  String get fontName => _fontName;
}
