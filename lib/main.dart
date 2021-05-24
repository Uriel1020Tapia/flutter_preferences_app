import 'package:flutter/material.dart';
import 'package:flutter_preferences_user_app/src/pages/home_page.dart';
import 'package:flutter_preferences_user_app/src/pages/settings_page.dart';
import 'package:flutter_preferences_user_app/src/shared_prefs/preferences_user.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final pref = PreferencesUser();
  await pref.initPrefs();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final prefs = new PreferencesUser();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Preferencias',
      initialRoute: prefs.lastPage,
      routes: {
        HomePage.routeName: (context) => HomePage(),
        SettignsPage.routeName: (context) => SettignsPage()
      },
    );
  }
}
