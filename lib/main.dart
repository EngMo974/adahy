import 'package:flutter/material.dart';
import 'screens/home_screen.dart';
import 'screens/onbording.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'utilities/app_theme.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences prefs = await SharedPreferences.getInstance();
  bool seen = prefs.getBool('seen');
  Widget _screen;
  if (seen == null || seen == false) {
    _screen = OnBording();
  } else {
    _screen = HomeScreen();
  }
  runApp(Adahay(_screen));
}

class Adahay extends StatelessWidget {
  final Widget _screen;

  Adahay(this._screen);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.themeData,
      home: this._screen,
    );
  }
}
