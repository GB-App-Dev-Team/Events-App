import 'package:events/constants.dart';
import 'package:events/utils/banner.dart';
import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: Colors.white,
          title: const Text(
            "Events",
            style: TextStyle(color: Colors.black),
          ),
          centerTitle: true,
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(kToolbarHeight),
            child: Container(
                padding: const EdgeInsets.all(2.0),
                margin: const EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey[300],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Material(
                    color: Colors.grey[300],
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        const Icon(Icons.search, color: Colors.grey),
                        Expanded(
                          child: TextField(
                            // textAlign: TextAlign.center,
                            decoration: const InputDecoration.collapsed(
                              hintText: ' Search',
                              hintStyle: TextStyle(
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w100,
                                  color: Colors.black),
                            ),
                            onChanged: (value) {},
                          ),
                        ),
                      ],
                    ),
                  ),
                )),
          ),
        ),
        body: ListView.builder(
          itemCount: 6,
          itemBuilder: (context, index) {
            return const EventBanner();
          },
        ),
        bottomNavigationBar: myBottomBar);
  }
}
