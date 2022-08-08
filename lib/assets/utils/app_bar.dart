import 'package:flutter/material.dart';

var myAppBar = AppBar(
  titleTextStyle: const TextStyle(height: 2.0),
  elevation: 0.0,
  backgroundColor: Colors.white,
  title: const Text(
    "Events",
    style: TextStyle(
        color: Colors.black,
        fontFamily: 'Roboto',
        fontSize: 18.0,
        fontWeight: FontWeight.w800),
  ),
  centerTitle: true,
  bottom: PreferredSize(
    preferredSize: const Size.fromHeight(55.0),
    child: Container(
        padding: const EdgeInsets.all(2.0),
        margin: const EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Colors.grey[300],
        ),
        child: Padding(
          padding: const EdgeInsets.all(4.0),
          child: Material(
            color: Colors.grey[300],
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                const Padding(
                  padding: EdgeInsets.only(left: 5.0),
                  child: Icon(Icons.search, color: Colors.grey),
                ),
                Expanded(
                  child: TextField(
                    // textAlign: TextAlign.center,
                    decoration: const InputDecoration(
                        border: InputBorder.none,
                        hintText: ' Search',
                        hintStyle: TextStyle(
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.normal,
                            color: Colors.grey,
                            fontSize: 16.0),
                        isDense: true,
                        contentPadding: EdgeInsets.all(10)),
                    onChanged: (value) {},
                  ),
                ),
              ],
            ),
          ),
        )),
  ),
);
