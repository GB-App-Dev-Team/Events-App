import 'package:events/constants.dart';
import 'package:events/utils/banner.dart';
import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar,
      backgroundColor: Colors.grey[350],
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 1),
            Padding(
              padding: const EdgeInsets.all(1.0),
              child: TextField(
                decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.search),
                    hintText: 'Search',
                    hintStyle: const TextStyle(
                        fontFamily: 'Roboto', fontWeight: FontWeight.w100,),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(1))),
              ),
            ),
            const SizedBox(height: 5),
            Expanded(
              child: ListView.builder(
                itemCount: 6,
                itemBuilder: (context, index) {
                  return const EventBanner();
                },
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: myBottomBar,
    );
  }
}
