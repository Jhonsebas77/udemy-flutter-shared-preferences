import 'package:flutter/material.dart';
import 'package:shared_preferences_udemy/src/widgets/widgets.dart';

class HomePage extends StatelessWidget {
  static final String routeName = 'home';
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Preferencias de Usuario'),
      ),
      drawer: MenuDrawer(),
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
}
