import 'package:flutter/material.dart';
import 'package:shared_preferences_udemy/src/pages/pages.dart';

class HomePage extends StatelessWidget {
  static final String routeName = 'home';
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Preferencias de Usuario'),
      ),
      drawer: _buildMenu(context),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Color Secundario: '),
          Divider(),
          Text('Género: '),
          Divider(),
          Text('Nombre: usuario'),
          Divider(),
        ],
      ),
    );
  }

  Drawer _buildMenu(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            child: Container(),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/img/menu-img.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Home'),
            onTap: () => Navigator.pushReplacementNamed(
              context,
              HomePage.routeName,
            ),
          ),
          ListTile(
            leading: Icon(Icons.party_mode),
            title: Text('Party Mode'),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.people),
            title: Text('People'),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Ajustes'),
            onTap: () => Navigator.pushReplacementNamed(
              context,
              SettingsPage.routeName,
            ),
          ),
        ],
      ),
    );
  }
}
