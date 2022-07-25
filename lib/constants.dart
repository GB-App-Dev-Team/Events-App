import 'package:flutter/material.dart';

var myAppBar = AppBar(
  title: const Text(
    'Events',
    style: TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.bold,
        fontSize: 16,
        fontFamily: 'Roboto'),
  ),
  centerTitle: true,
  backgroundColor: Colors.grey[100],
  elevation: 0,
);

var myBottomBar = BottomNavigationBar(
  type: BottomNavigationBarType.fixed,
  unselectedItemColor: Colors.grey,
  selectedItemColor: Colors.grey,
  unselectedLabelStyle:
      const TextStyle(fontFamily: 'Roboto', fontWeight: FontWeight.w500, fontSize: 10),
  selectedLabelStyle: 
      const TextStyle(fontFamily: 'Roboto', fontWeight: FontWeight.w500, fontSize: 10),
  items: <BottomNavigationBarItem>[
    BottomNavigationBarItem(
      icon: Icon(
        Icons.home,
        color: Colors.grey[600],
      ),
      label: 'Home',
    ),
    BottomNavigationBarItem(
      icon: Icon(
        Icons.play_circle,
        color: Colors.deepPurple[400],
      ),
      label: 'Events',
    ),
    BottomNavigationBarItem(
      icon: Icon(
        Icons.bookmark,
        color: Colors.grey[600],
      ),
      label: 'Saved',
    ),
    BottomNavigationBarItem(
      icon: Icon(
        Icons.person_pin,
        color: Colors.grey[600],
      ),
      label: 'Profile',
    ),
  ],
);
