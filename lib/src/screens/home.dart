import 'package:flutter/material.dart';
import 'package:preferences/settings/preferences.dart';
import 'package:preferences/src/widgets/drawer.dart';

class HomePage extends StatelessWidget {
  static final String routeName = 'home_page';
  final Preferences preferences = Preferences();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      appBar: AppBar(
        title: Text('Preferences project'),
      ),
      body: Column(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.color_lens),
            title: Text('Secondary color: ${preferences.isSecondaryColor}'),
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text('Genre: ${preferences.genre}'),
          ),
          ListTile(
            leading: Icon(Icons.rowing),
            title: Text('Username: ${preferences.username}'),
          ),
        ],
      ),
    );
  }
}
