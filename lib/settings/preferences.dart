import 'package:shared_preferences/shared_preferences.dart';

class Preferences {
  static final Preferences _instance = Preferences._internal();
  factory Preferences() {
    return _instance;
  }
  SharedPreferences _preferences;
  initPreferences() async {
    _preferences = await SharedPreferences.getInstance();
  }

  Preferences._internal();

  set setIsSecondaryColor(bool boolean) {
    _preferences.setBool('isSecondaryColor', boolean);
  }

  bool get isSecondaryColor {
    return _preferences.getBool('isSecondaryColor') ?? false;
  }

  set setGenre(int genre) {
    _preferences.setInt('genre', genre);
  }

  int get genre {
    return _preferences.getInt('genre') ?? 1;
  }

  set setUsername(String username) {
    _preferences.setString('username', username);
  }

  String get username {
    return _preferences.getString('username') ?? '';
  }
}
