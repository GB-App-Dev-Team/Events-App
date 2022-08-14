import 'package:events/assets/utils/app_bar.dart';
import 'package:events/pages/event_page.dart';
import 'package:flutter/material.dart';
import 'package:toggle_switch/toggle_switch.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int _currentIndex = 0;

  final tabs = [
    Center(child: Text('Home')),
    EventsPage(),
    Center(child: Text('Saved')),
    Center(child: Text('Profile')),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: myAppBar,
        body: tabs[_currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: _currentIndex,
          unselectedItemColor: Colors.grey,
          selectedItemColor: Color.fromARGB(255, 108, 99, 254),
          unselectedLabelStyle: const TextStyle(
              fontFamily: 'Roboto', fontWeight: FontWeight.w500, fontSize: 10),
          selectedLabelStyle: const TextStyle(
              fontFamily: 'Roboto', fontWeight: FontWeight.w500, fontSize: 10),
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.play_circle),
              label: 'Events',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              label: 'Saved',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_pin),
              label: 'Profile',
            ),
          ],
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
        ));
  }
}

//list of images

