import 'package:flutter/material.dart';
import 'package:preferences/settings/preferences.dart';
import 'package:preferences/src/screens/home.dart';
import 'package:preferences/src/screens/settings.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Preferences preferences = Preferences();
  await preferences.initPreferences();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Preferences',
      initialRoute: HomePage.routeName,
      routes: {
        HomePage.routeName: (BuildContext context) => HomePage(),
        SettingsPage.routeName: (BuildContext context) => SettingsPage(),
      },
    );
  }
}
