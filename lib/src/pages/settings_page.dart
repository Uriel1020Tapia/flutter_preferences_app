import 'package:flutter/material.dart';
import 'package:flutter_preferences_user_app/src/shared_prefs/preferences_user.dart';
import 'package:flutter_preferences_user_app/widgets/menu_drawer_widget.dart';

class SettignsPage extends StatefulWidget {
  static final String routeName = 'settings';

  @override
  _SettignsPageState createState() => _SettignsPageState();
}

class _SettignsPageState extends State<SettignsPage> {
  bool _colorSecondary;
  int _gender;
  String _name = 'Goku';

  TextEditingController _textController;
  final PreferencesUser prefs = new PreferencesUser();

  @override
  void initState() {
    super.initState();
    prefs.lastPage = SettignsPage.routeName;
    _gender = prefs.gender;
    _colorSecondary = prefs.colorSecondary;
    _name = prefs.nameUser;
    _textController = new TextEditingController(text: _name);
  }

  _setSelectedRadio(int valor) {
    prefs.gender = valor;
    _gender = valor;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Settings'),
          backgroundColor: (prefs.colorSecondary) ? Colors.pink : Colors.blue,
          actions: [],
        ),
        drawer: MenuDrawerWidget(),
        body: ListView(
          children: [
            Container(
              padding: EdgeInsets.all(5.0),
              child: Text(
                'Settings',
                style: TextStyle(fontSize: 45.0, fontWeight: FontWeight.bold),
              ),
            ),
            Divider(),
            SwitchListTile(
                value: _colorSecondary,
                title: Text('Color secondary'),
                onChanged: (value) {
                  setState(() {
                    _colorSecondary = value;
                    prefs.colorSecondary = value;
                  });
                }),
            RadioListTile(
                value: 1,
                title: Text('Masculino'),
                groupValue: _gender,
                onChanged: _setSelectedRadio),
            RadioListTile(
                value: 2,
                title: Text('Femenino'),
                groupValue: _gender,
                onChanged: _setSelectedRadio),
            Divider(),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: TextField(
                controller: _textController,
                decoration:
                    InputDecoration(labelText: 'Name', helperText: 'Name user'),
                onChanged: (value) {
                  prefs.nameUser = value;
                },
              ),
            )
          ],
        ));
  }
}
