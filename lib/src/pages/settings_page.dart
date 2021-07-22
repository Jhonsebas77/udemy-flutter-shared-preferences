import 'package:flutter/material.dart';
import 'package:shared_preferences_udemy/src/widgets/widgets.dart';

class SettingsPage extends StatelessWidget {
  static final String routeName = 'settings';
  const SettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ajustes'),
      ),
      drawer: MenuDrawer(),
      body: Center(
        child: Text(
          'Ajustes Page',
        ),
      ),
    );
  }
}
