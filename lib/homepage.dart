import 'package:events/constants.dart';
import 'package:flutter/material.dart';
import 'package:toggle_switch/toggle_switch.dart';

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
                fontWeight: FontWeight.w800),
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
                                  color: Colors.black,
                                  fontSize: 13.0),
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Scrollbar(
                    child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: ToggleSwitch(
                          minWidth: 90.0,
                          fontSize: 11,
                          cornerRadius: 5.0,
                          customWidths: [75, 75, 75, 75, 75],
                          activeBgColors: [
                            [Colors.deepPurple],
                            [Colors.deepPurple],
                            [Colors.deepPurple],
                            [Colors.deepPurple],
                            [Colors.deepPurple],
                          ],
                          activeFgColor: Colors.white,
                          inactiveBgColor: Colors.white10,
                          inactiveFgColor: Colors.black,
                          //initialLabelIndex: 0,
                          //totalSwitches: 5,
                          labels: [
                            'Registered',
                            'Upcoming',
                            'Ongoing',
                            'Attended',
                            'Booked'
                          ],
                          radiusStyle: true,
                          // customTextStyles: [
                          //   TextStyle(fontSize: 11, fontWeight: FontWeight.w200)
                          // ],
                        )))),
            Expanded(
              child: ListView.builder(
                itemCount: rolesOrJobs.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                    //padding: const EdgeInsets.all(8),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(7),
                      child: Container(
                        height: 150,
                        color: Colors.white,
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
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      rolesOrJobs[index],
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                        fontSize: 18,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 6.0, horizontal: 4.0),
                                      child: Text(entriesdes[index],
                                          //textAlign: TextAlign.left,
                                          style: TextStyle(
                                            fontSize: 10,
                                            fontWeight: FontWeight.w100,
                                            color:
                                                Color.fromARGB(255, 86, 81, 81),
                                          )),
                                    ),
                                    Padding(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 5.0, horizontal: 4.0),
                                        child: Container(
                                          height: 30,
                                          child: Row(children: [
                                            Text(
                                              timings[index],
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 80),
                                              child: Container(
                                                  width: 30,
                                                  height: 30,
                                                  alignment:
                                                      Alignment.centerRight,
                                                  child: Image.asset(
                                                      'lib/assets/images/${pics[index]}')),
                                            )
                                          ]),
                                        )),
                                    Padding(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 0, horizontal: 4),
                                        child: Row(
                                          children: [
                                            TextButton(
                                                onPressed: () {},
                                                child: Text(
                                                  "Details",
                                                  style: TextStyle(
                                                      color: Colors.deepPurple,
                                                      fontWeight:
                                                          FontWeight.w200),
                                                )),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 55),
                                              child: ElevatedButton(

                                                  // ignore: prefer_const_constructors
                                                  style:
                                                      ElevatedButton.styleFrom(
                                                          primary: Colors
                                                              .deepPurple),
                                                  onPressed: () {},
                                                  child: Text("Register")),
                                            )
                                          ],
                                        ))
                                  ]),
                            ),
                          )
                        ]),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
        bottomNavigationBar: myBottomBar);
  }
}

//list of images
final List<String> entries = <String>['music', 'product', 'research'];
final List<String> pics = <String>[
  'Universal-logo.png',
  'paraxel.png',
  'TCS_Logo.jpg',
];
final List<String> timings = <String>[
  '4:20 - 7:30',
  '13:10 - 15:40',
  '20:40 - 23 :10'
];
final List<String> entriesdes = <String>[
  'Mr Micheal Giachinno,Music Producer',
  'Mr John Wick,Product Designer',
  'Mr Reiner Braun,Robotics dep.'
];
final List<String> rolesOrJobs = <String>[
  'Music',
  'Product Design',
  'Clinical Research'
];
final List<bool> _selections = List.generate(5, (_) => false);
