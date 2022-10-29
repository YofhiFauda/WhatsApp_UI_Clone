import 'package:flutter/material.dart';

import 'item_panggilan.dart';

class PaanggilanPage extends StatelessWidget {
  const PaanggilanPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
        child: ListView(
          children: const [
            SingleCallWidget(
              callStatus: 'Outgoing',
              callType: 'Audio',
              chatMessage: 'Hari ini, 12:28 PM',
              chatTitle: 'Samantha Martin',
              imageUrl: 'assets/images/cowo 1.jpg',
            ),
            SingleCallWidget(
              callStatus: 'Incoming',
              callType: 'Video',
              chatMessage: 'Hari ini, 01:11 AM',
              chatTitle: 'Jane William',
              imageUrl: 'assets/images/cewe 5.jpg',
            ),
            SingleCallWidget(
              callStatus: 'Incoming',
              callType: 'Video',
              chatMessage: 'Kemarin, 5:28 AM',
              chatTitle: 'Trip Murphy',
              imageUrl: 'assets/images/cowo 4.jpeg',
            ),
            SingleCallWidget(
              callStatus: 'Outgoing',
              callType: 'Audio',
              chatMessage: 'Kemarin, 12:28 PM',
              chatTitle: 'Xena Catherine',
              imageUrl: 'assets/images/cewe 8.jpg',
            ),
          ],
        ),
      ),
      floatingActionButton: SizedBox(
        height: 70,
        width: 70,
        child: FittedBox(
          child: FloatingActionButton(
              onPressed: () {
                //TODO: handle the press
              },
              backgroundColor: const Color(0xFF12A795),
              child: const Icon(Icons.add_ic_call)),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}
