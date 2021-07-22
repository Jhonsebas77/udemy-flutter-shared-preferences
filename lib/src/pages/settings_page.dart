import 'package:flutter/material.dart';
import 'package:shared_preferences_udemy/src/widgets/widgets.dart';

class SettingsPage extends StatefulWidget {
  static final String routeName = 'settings';
  const SettingsPage({Key? key}) : super(key: key);

  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  bool _secondaryColor = false;
  int _gender = 1;
  String _name = 'User Name';

  late TextEditingController _textEditingController;

  @override
  void initState() {
    super.initState();
    _textEditingController = TextEditingController(text: _name);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ajustes'),
      ),
      drawer: MenuDrawer(),
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.all(5),
            child: Text(
              'Settings',
              style: TextStyle(
                fontSize: 45,
                fontStyle: FontStyle.italic,
              ),
            ),
          ),
          Divider(),
          SwitchListTile(
            value: _secondaryColor,
            onChanged: (value) {
              setState(() {
                _secondaryColor = value;
              });
            },
            title: Text('Color Secundario'),
          ),
          RadioListTile(
            value: 1,
            title: Text('Masculino'),
            groupValue: _gender,
            onChanged: (value) {
              setState(() {
                _gender = value as int;
              });
            },
          ),
          RadioListTile(
            value: 2,
            title: Text('Femenino'),
            groupValue: _gender,
            onChanged: (value) {
              setState(() {
                _gender = value as int;
              });
            },
          ),
          Divider(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: TextField(
              controller: _textEditingController,
              decoration: InputDecoration(
                labelText: 'Nombre',
                helperText: 'Nombre de Usuario',
              ),
              onChanged: (value) {},
            ),
          ),
        ],
      ),
    );
  }
}
