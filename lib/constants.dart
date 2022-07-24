import 'package:flutter/material.dart';

var myAppBar = AppBar(
  title: const Text(
    'Events',
    style: TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.bold,
        fontFamily: 'Poppins'),
  ),
  //backgroundColor: Colors.white,
  centerTitle: true,
  backgroundColor: Colors.grey[100],
  elevation: 0,
);

var myBottomBar = BottomNavigationBar(
  type: BottomNavigationBarType.fixed,
  unselectedItemColor: Colors.grey,
  selectedItemColor: Colors.deepPurple,
  selectedLabelStyle:
      const TextStyle(fontFamily: 'Poppins', fontWeight: FontWeight.w300),
  items: const <BottomNavigationBarItem>[
    BottomNavigationBarItem(
      icon: Icon(
        Icons.home,
        color: Colors.grey,
      ),
      label: 'Home',
    ),
    BottomNavigationBarItem(
      icon: Icon(
        Icons.play_circle,
        color: Colors.grey,
      ),
      label: 'Events',
    ),
    BottomNavigationBarItem(
      icon: Icon(
        Icons.bookmark,
        color: Colors.grey,
      ),
      label: 'Saved',
    ),
    BottomNavigationBarItem(
      icon: Icon(
        Icons.person_pin,
        color: Colors.grey,
      ),
      label: 'Profile',
    ),
  ],
);
