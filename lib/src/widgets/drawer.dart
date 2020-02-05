import 'package:flutter/material.dart';
import 'package:preferences/src/screens/home.dart';
import 'package:preferences/src/screens/settings.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          DrawerHeader(
            //padding: EdgeInsets.zero,
            child: Center(
              child: Text('Preferences project'),
            ),
            //child: Container(
            //  decoration: BoxDecoration(
            //    image: DecorationImage(
            //      fit: BoxFit.cover,
            //      image: AssetImage('assets/menu-img.jpg'),
            //    ),
            //  ),
            //),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Home'),
            onTap: () {
              Navigator.pushReplacementNamed(context, HomePage.routeName);
            },
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Settings'),
            onTap: () {
              Navigator.pushReplacementNamed(context, SettingsPage.routeName);
            },
          ),
        ],
      ),
    );
  }
}
