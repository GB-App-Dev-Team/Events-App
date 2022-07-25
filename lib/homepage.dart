import 'package:events/constants.dart';

import 'package:events/utils/categories.dart';


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
          titleTextStyle: const TextStyle(height: 2.0),
          elevation: 0.0,
          backgroundColor: Colors.white,
          title: const Text(
            "Events",
            style: TextStyle(
                color: Colors.black,

                fontFamily: 'Poppins',
               

                fontSize: 16.0,
                fontWeight: FontWeight.w500),

          ),
          centerTitle: true,
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(30.0),
            child: Container(
                padding: const EdgeInsets.all(2.0),
                margin: const EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.grey[300],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(1.0),
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
                                  fontFamily: 'Poppins',

                                  fontWeight: FontWeight.w100,
                                  color: Colors.black),

                                  fontSize: 13.0,

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

        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                height: 30,
                child: ListView(scrollDirection: Axis.horizontal, children: [
                  Categories(
                    category: 'Ongoing',
                  ),
                  Categories(
                    category: 'Upcoming',
                  ),
                  Categories(
                    category: 'Registered',
                  ),
                  Categories(
                    category: 'Attended',
                  ),
                  Categories(
                    category: 'Finished',
                  ),
                ]),
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: 6,
                itemBuilder: (context, index) {
                  return const EventBanner();
                },
              ),
            ),
          ],

        body: ListView.builder(
          itemCount: rolesOrJobs.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
              //padding: const EdgeInsets.all(8),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(7),
                child: Container(
                  height: 150,
                  color: Colors.grey[100],
                  child: Row(children: [
                    Container(
                      width: 150,
                      height: 200,
                      child: Image.asset(
                        'lib/assets/images/${entries[index]}.jpg',
                        fit: BoxFit.fill,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        child: Align(
                          alignment: Alignment.topRight,
                          child: Text('${rolesOrJobs[index]}'),
                        ),
                      ),
                    )
                  ]),
                ),
              ),
            );
          },

        ),
        bottomNavigationBar: myBottomBar);
  }
}

//list of images
final List<String> entries = <String>['music', 'product', 'research'];
final List<String> rolesOrJobs = <String>[
  'Music',
  'Product Design',
  'Clinical Research'
];
