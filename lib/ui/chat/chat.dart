import 'package:flutter/material.dart';
import 'package:wa_clone_ui/ui/detail/detail_chat.dart';
import 'package:wa_clone_ui/ui/model/list_chat.dart';

import 'item.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10),
        child: ListView.builder(
          // product list
          itemCount: listChat.length,
          itemBuilder: (context, index) => ItemCard(
            itemIndex: index,
            listChat: listChat[index],
            seenStatusColor: Colors.blue,
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailChat(
                    listChat: listChat[index],
                  ),
                ),
              );
            },
          ),
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
              child: const Icon(Icons.message)),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}
