import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:toggle_switch/toggle_switch.dart';

class EventsPage extends StatefulWidget {
  EventsPage({Key? key}) : super(key: key);

  @override
  State<EventsPage> createState() => _EventsPageState();
}

class _EventsPageState extends State<EventsPage> {
  final titleStyle = const TextStyle(fontSize: 16, fontWeight: FontWeight.bold);
  final subTitleStyle = const TextStyle(
    fontSize: 12,
    fontFamily: 'Roboto Thin',
    color: Color.fromRGBO(66, 66, 66, 1),
  );

  @override
  Widget build(BuildContext context) {
    return Column(
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
                      customWidths: _customWidhts,
                      activeBgColors: _activebgcolors,
                      activeFgColor: Colors.white,
                      inactiveBgColor: Color.fromARGB(251, 251, 251, 251),
                      inactiveFgColor: Colors.black,
                      //initialLabelIndex: 0,
                      //totalSwitches: 5,
                      labels: _categories,
                      radiusStyle: true,
                      // customTextStyles: [
                      //   TextStyle(fontSize: 11, fontWeight: FontWeight.w200)
                      // ],
                    )))),
        const SizedBox(height: 10),
        Expanded(
          child: ListView.builder(
            itemCount: entries.length,
            itemBuilder: (context, index) {
              return Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 3),
                  child: Card(
                      elevation: 5,
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(14)),
                      child: SizedBox(
                          height: 270,
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: 135,
                                  child: Stack(children: [
                                    Container(
                                      foregroundDecoration: BoxDecoration(
                                          image: DecorationImage(
                                        image: AssetImage(
                                            'lib/assets/images/${entries[index]}'),
                                        fit: BoxFit.fitWidth,
                                      )),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Align(
                                        alignment: Alignment.topRight,
                                        child: Container(
                                          height: 35,
                                          width: 35,
                                          decoration: const BoxDecoration(
                                              color:
                                                  Color.fromARGB(95, 0, 0, 0),
                                              shape: BoxShape.circle),
                                          child: Padding(
                                            padding: const EdgeInsets.only(
                                                right: 10.0),
                                            child: IconButton(
                                              icon: Icon(
                                                _selections[index]
                                                    ? Icons
                                                        .favorite_border_sharp
                                                    : Icons.favorite_sharp,
                                                color: _selections[index]
                                                    ? Colors.white
                                                    : Colors.red,
                                                size: 20,
                                              ),
                                              onPressed: () {
                                                setState(() {
                                                  _selections[index] =
                                                      !_selections[index];
                                                });
                                              },
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    // Padding(
                                    //   //padding 4.0 works crctly windows and chrome app, bruh
                                    //   padding: const EdgeInsets.all(0.0),
                                    //   child: Align(
                                    //     alignment: Alignment.topRight,
                                    //     child:
                                    //   ),
                                    // )
                                  ]),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(14.0, 14, 0, 0),
                                  child: Column(
                                    children: [
                                      Align(
                                          alignment: Alignment.centerLeft,
                                          child: Text(
                                            rolesOrJobs[index],
                                            style: titleStyle,
                                          )),
                                      Row(
                                        children: [
                                          Text(
                                            '4.8 ',
                                            style: TextStyle(
                                              color: Colors.grey.withOpacity(1),
                                              fontSize: 12,
                                            ),
                                          ),
                                          Align(
                                            alignment: Alignment.centerLeft,
                                            child: RatingBar.builder(
                                              initialRating: 3,
                                              minRating: 1,
                                              direction: Axis.horizontal,
                                              itemCount: 5,
                                              itemSize: 15,
                                              allowHalfRating: true,
                                              itemPadding: EdgeInsets.symmetric(
                                                  horizontal: 1.0, vertical: 4),
                                              itemBuilder: (context, _) => Icon(
                                                Icons.star,
                                                color: Colors.amber,
                                              ),
                                              onRatingUpdate: (rating) {
                                                print(rating);
                                              },
                                            ),
                                          ),
                                          Text(
                                            ' (50K)',
                                            style: TextStyle(
                                              color: Colors.grey.withOpacity(1),
                                              fontSize: 11,
                                            ),
                                          )
                                        ],
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                          vertical: 7,
                                        ),
                                        child: Divider(
                                          color: Colors.grey[300],
                                          thickness: 1,
                                        ),
                                      ),
                                      Column(
                                        children: [
                                          Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                SizedBox(
                                                    width: 95,
                                                    child: Text(
                                                      'Speaker',
                                                      style: TextStyle(
                                                          fontSize: 13),
                                                    )),
                                                SizedBox(
                                                    width: 100,
                                                    child: Text(
                                                      'Date of Event',
                                                      style: TextStyle(
                                                          fontSize: 13),
                                                    )),
                                                SizedBox(
                                                    width: 120,
                                                    child: Text(
                                                      'Company Name',
                                                      style: TextStyle(
                                                          fontSize: 13),
                                                    )),
                                              ]),
                                          SizedBox(height: 7),
                                          Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                SizedBox(
                                                  width: 95,
                                                  child: Text(
                                                    speakers[index],
                                                    style: TextStyle(
                                                      color: Colors.grey
                                                          .withOpacity(1),
                                                      fontSize: 10,
                                                    ),
                                                    textAlign: TextAlign.left,
                                                  ),
                                                ),
                                                SizedBox(
                                                  width: 100,
                                                  child: Text(
                                                    dates[index],
                                                    style: TextStyle(
                                                      color: Colors.grey
                                                          .withOpacity(1),
                                                      fontSize: 10,
                                                    ),
                                                    textAlign: TextAlign.left,
                                                  ),
                                                ),
                                                SizedBox(
                                                  width: 120,
                                                  child: Text(
                                                    companies[index],
                                                    style: TextStyle(
                                                      color: Colors.grey
                                                          .withOpacity(1),
                                                      fontSize: 10,
                                                    ),
                                                    textAlign: TextAlign.left,
                                                  ),
                                                ),
                                              ]),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ]))));
              // return Padding(
              //   padding:
              //       const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
              //   //padding: const EdgeInsets.all(8),
              //   child: ClipRRect(
              //     borderRadius: BorderRadius.circular(7),
              //     child: Container(
              //       height: 150,
              //       width: MediaQuery.of(context).size.width,
              //       color: Colors.grey[100],
              //       child: Row(children: [
              //         Container(
              //           width: 150,
              //           height: 200,
              //           child: Image.asset(
              //             'lib/assets/images/${entries[index]}.jpg',
              //             fit: BoxFit.cover,
              //           ),
              //         ),
              //         Padding(
              //           padding: const EdgeInsets.all(8.0),
              //           child: Container(
              //             // width: MediaQuery.of(context).size.width,
              //             child: Column(
              //                 crossAxisAlignment: CrossAxisAlignment.start,
              //                 children: [
              //                   Text(
              //                     rolesOrJobs[index],
              //                     textAlign: TextAlign.left,
              //                     style: TextStyle(
              //                       fontSize: 18,
              //                     ),
              //                   ),
              //                   Padding(
              //                     padding: const EdgeInsets.symmetric(
              //                         vertical: 6.0, horizontal: 4.0),
              //                     child: Text(entriesdes[index],
              //                         //textAlign: TextAlign.left,
              //                         style: TextStyle(
              //                           fontSize: 10,
              //                           fontWeight: FontWeight.w100,
              //                           color: Color.fromARGB(255, 86, 81, 81),
              //                         )),
              //                   ),
              //                   Padding(
              //                       padding: const EdgeInsets.symmetric(
              //                           vertical: 5.0, horizontal: 4.0),
              //                       child: Container(
              //                         height: 30,
              //                         child: Row(children: [
              //                           Text(
              //                             timings[index],
              //                           ),
              //                           Padding(
              //                             padding:
              //                                 const EdgeInsets.only(left: 80),
              //                             child: Container(
              //                                 width: 30,
              //                                 height: 30,
              //                                 alignment: Alignment.centerRight,
              //                                 child: Image.asset(
              //                                     'lib/assets/images/${pics[index]}')),
              //                           )
              //                         ]),
              //                       )),
              //                   Padding(
              //                       padding: const EdgeInsets.symmetric(
              //                           vertical: 0, horizontal: 4),
              //                       child: Row(
              //                         mainAxisAlignment:
              //                             MainAxisAlignment.spaceAround,
              //                         children: [
              //                           TextButton(
              //                               onPressed: () {},
              //                               child: Text(
              //                                 "Details",
              //                                 style: TextStyle(
              //                                     color: Colors.black,
              //                                     fontFamily: 'Roboto',
              //                                     fontWeight: FontWeight.w100),
              //                               )),
              //                           Padding(
              //                             padding:
              //                                 const EdgeInsets.only(left: 55),
              //                             child: SizedBox(
              //                               height: 24,
              //                               width: 80,
              //                               child: ElevatedButton(

              //                                   // ignore: prefer_const_constructors
              //                                   style: ElevatedButton.styleFrom(
              //                                     primary: Color.fromARGB(
              //                                         255, 108, 99, 254),
              //                                     shape: RoundedRectangleBorder(
              //                                         borderRadius:
              //                                             BorderRadius.circular(
              //                                                 7)),
              //                                   ),
              //                                   onPressed: () {},
              //                                   child: Text(
              //                                     "Register",
              //                                     style:
              //                                         TextStyle(fontSize: 12),
              //                                   )),
              //                             ),
              //                           )
              //                         ],
              //                       ))
              //                 ]),
              //           ),
              //         )
              //       ]),
              //     ),
              //   ),
              // );
            },
          ),
        ),
      ],
    );
  }
}

final List<String> entries = <String>[
  'image1.png',
  'image2.jpeg',
  'image3.jpeg',
];
final List<String> pics = <String>[
  'image1.png',
  'image2.jpeg',
  'image3.jpeg',
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
  'What\'s new in Figma: July 2022',
  'The Future of Marketing is Creative',
  'Clinical Research'
];
final List<String> speakers = <String>[
  "Chandler Sopko",
  "Sergio Claudio",
  "Arj Sama"
];
final List<String> dates = <String>[
  "July 27, 2022",
  "July 11, 2022",
  "July 27, 2022"
];
final List<String> companies = <String>["Figma", "Adobe", "Apollo"];
final List<bool> _selections = List.generate(rolesOrJobs.length, (_) => true);

final List<String> _categories = <String>[
  'All',
  'Ongoing',
  'Upcoming',
  'Viewed',
  'Registered',
  'Attended',
  'Booked'
];

final List<List<Color>> _activebgcolors = (List.generate(_categories.length,
    (_) => List.generate(_categories.length, (_) => Colors.deepPurple)));

final List<double> _customWidhts = List.generate(_categories.length, (_) => 95);
