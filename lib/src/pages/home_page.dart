import 'package:flutter/material.dart';
import 'package:flutter_preferences_user_app/src/shared_prefs/preferences_user.dart';
import 'package:flutter_preferences_user_app/widgets/menu_drawer_widget.dart';

class HomePage extends StatelessWidget {
  static final String routeName = 'home';
  final prefs = PreferencesUser();

  @override
  Widget build(BuildContext context) {
    prefs.lastPage = HomePage.routeName;
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings user'),
        backgroundColor: (prefs.colorSecondary) ? Colors.pink : Colors.blue,
        actions: [],
      ),
      drawer: MenuDrawerWidget(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Color secondary:${prefs.colorSecondary}'),
          Divider(),
          Text('Gender: ${prefs.gender}'),
          Divider(),
          Text('Username:${prefs.nameUser}'),
          Divider(),
        ],
      ),
    );
  }
}
