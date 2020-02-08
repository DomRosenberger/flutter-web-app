import 'package:dom_website/config/assets.dart';
import 'package:dom_website/tab/about.dart';
import 'package:dom_website/tab/projects.dart';
import 'package:dom_website/widgets/theme_inherited_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  bool _enabled = false;
  static List<Widget> tabWidgets = <Widget>[
    AboutTab(),
    ProjectsTab(),
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          Switch(
            value: _enabled,
            onChanged: (bool value) {
              setState(() {
                ThemeSwitcher.of(context).switchDarkMode();
                _enabled = value;
              });
            },
            activeThumbImage: AssetImage(Assets.on_switch),
            inactiveThumbImage: AssetImage(Assets.off_switch),
          ),
        ],
      ),
      body: Center(
        child: tabWidgets.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            title: Text('About'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.mobile_screen_share),
            title: Text('Projects'),
          )
        ],
        currentIndex: _selectedIndex,
        onTap: (index) => setState(() => _selectedIndex = index),
        selectedItemColor: Theme.of(context).accentColor,
      ),
    );
  }
}
