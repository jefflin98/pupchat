import 'package:flutter/material.dart';
import 'package:pupchat/chat_screen.dart';
import 'package:pupchat/home_screen.dart';
import 'package:pupchat/map_screen.dart';
import 'package:pupchat/style.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(index: 0),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.index}) : super(key: key);

  int index;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (widget.index != -1) {
      setState(() {
        _selectedIndex = widget.index;
      });
      widget.index = -1;
    }
    List<Widget> _widgetOptions = <Widget>[
      HomeScreen(_onItemTapped),
      const MapScreen(),
      ChatScreen(0),
      const Text(
        'Profile',
        style: Style.h1,
      ),
    ];

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: SizedBox(
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.map),
              label: 'Map',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.chat),
              label: 'Chat',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Style.primary,
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}
