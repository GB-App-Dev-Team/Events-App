import 'package:flutter/material.dart';

class EventBanner extends StatelessWidget {
  const EventBanner({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
              color: Colors.black,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: Text('to be filled...'),
              ),
            )
          ]),
        ),
      ),
    );
  }
}
