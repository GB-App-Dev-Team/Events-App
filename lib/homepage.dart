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
                          minWidth: 120.0,
                          fontSize: 14,
                          cornerRadius: 7.0,
                          customWidths: const [95, 95, 95, 95, 95],
                          activeBgColors: const [
                            [Color.fromARGB(255, 108, 99, 254)],
                            [Color.fromARGB(255, 108, 99, 254)],
                            [Color.fromARGB(255, 108, 99, 254)],
                            [Color.fromARGB(255, 108, 99, 254)],
                            [Color.fromARGB(255, 108, 99, 254)],
                          ],
                          activeFgColor: Colors.white,
                          inactiveBgColor: Colors.white,
                          inactiveFgColor: Colors.black,
                          //initialLabelIndex: 0,
                          //totalSwitches: 5,
                          labels: const [
                            'Ongoing',
                            'Upcoming',
                            'Registered',
                            'Attended',
                            'Booked'
                          ],
                          radiusStyle: true,
                          // customTextStyles: [
                          //   TextStyle(fontSize: 11, fontWeight: FontWeight.w200)
                          // ],
                        )))),
            const SizedBox(height: 10),
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
                        width: MediaQuery.of(context).size.width,
                        color: Colors.grey[100],
                        child: Row(children: [
                          Container(
                            width: 150,
                            height: 200,
                            child: Image.asset(
                              'lib/assets/images/${entries[index]}.jpg',
                              fit: BoxFit.cover,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              // width: MediaQuery.of(context).size.width,
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
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          children: [
                                            TextButton(
                                                onPressed: () {},
                                                child: Text(
                                                  "Details",
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontFamily: 'Roboto',
                                                      fontWeight:
                                                          FontWeight.w100),
                                                )),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 55),
                                              child: SizedBox(
                                                height: 24,
                                                width: 80,
                                                child: ElevatedButton(

                                                    // ignore: prefer_const_constructors
                                                    style: ElevatedButton
                                                        .styleFrom(
                                                      primary: Color.fromARGB(
                                                          255, 108, 99, 254),
                                                      shape:
                                                          RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          7)),
                                                    ),
                                                    onPressed: () {},
                                                    child: Text(
                                                      "Register",
                                                      style: TextStyle(
                                                          fontSize: 12),
                                                    )),
                                              ),
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
