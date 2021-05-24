import 'package:shared_preferences/shared_preferences.dart';

class PreferencesUser {
  static final PreferencesUser _instance = new PreferencesUser._internal();

  factory PreferencesUser() {
    return _instance;
  }
  PreferencesUser._internal();

  SharedPreferences _prefs;

  initPrefs() async {
    this._prefs = await SharedPreferences.getInstance();
  }

//GET Y SET GENERO
  get gender {
    return _prefs.getInt('gender') ?? 1;
  }

  set gender(int value) {
    _prefs.setInt('gender', value);
  }

  //GET Y SET COLOR
  get colorSecondary {
    return _prefs.getBool('color') ?? false;
  }

  set colorSecondary(bool colorSecondary) {
    _prefs.setBool('color', colorSecondary);
  }

  //GET Y SET NOMBRE usuario
  get nameUser {
    return _prefs.getString('nameUser') ?? '';
  }

  set nameUser(String value) {
    _prefs.setString('nameUser', value);
  }

  //GET Y SET ULTIMA PAGINA VISITADA
  get lastPage {
    return _prefs.getString('lastPage') ?? 'home';
  }

  set lastPage(String value) {
    _prefs.setString('lastPage', value);
  }
}
