import 'package:flutter/material.dart';
import 'package:preferences/settings/preferences.dart';
import 'package:preferences/src/widgets/drawer.dart';

class SettingsPage extends StatefulWidget {
  static final String routeName = 'settings_page';

  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  Preferences preferences = Preferences();
  bool _isSecondaryColor;
  int _genre;
  String _username;
  TextEditingController _textEditingController;
  @override
  void initState() {
    super.initState();
    _isSecondaryColor = preferences.isSecondaryColor;
    _genre = preferences.genre;
    _username = preferences.username;
    _textEditingController = TextEditingController(text: _username);
  }

  void _setSelectedValue(int value) {
    setState(() {
      _genre = value;
      preferences.setGenre = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      appBar: AppBar(
        title: Text('Settings'),
      ),
      body: ListView(
        children: <Widget>[
          SwitchListTile(
            title: Text('Secondary color'),
            value: _isSecondaryColor,
            onChanged: (value) {
              setState(() {
                preferences.setIsSecondaryColor = value;
                _isSecondaryColor = value;
              });
            },
          ),
          RadioListTile(
            title: Text('Male'),
            value: 0,
            groupValue: _genre,
            onChanged: _setSelectedValue,
          ),
          RadioListTile(
            title: Text('Female'),
            value: 1,
            groupValue: _genre,
            onChanged: _setSelectedValue,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: TextField(
              controller: _textEditingController,
              decoration: InputDecoration(
                labelText: 'Username',
              ),
              onChanged: (value) {
                preferences.setUsername = value;
              },
            ),
          )
        ],
      ),
    );
  }
}
