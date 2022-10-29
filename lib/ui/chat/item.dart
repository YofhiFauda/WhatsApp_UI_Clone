import 'package:flutter/material.dart';
import 'package:wa_clone_ui/ui/model/list_chat.dart';

class ItemCard extends StatelessWidget {
  final Color? seenStatusColor;
  final int itemIndex;
  final ListChat listChat;
  final Function press;
  const ItemCard({
    Key? key,
    required this.itemIndex,
    required this.listChat,
    required this.press,
    this.seenStatusColor,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5),
      child: InkWell(
        onTap: () {
          press();
        },
        child: Row(
          children: [
            Stack(
              children: [
                CircleAvatar(
                  backgroundColor: Colors.grey,
                  radius: 30,
                  child: CircleAvatar(
                    radius: 28,
                    backgroundImage: AssetImage(listChat.image),
                  ),
                ),
              ],
            ),
            Expanded(
              child: ListTile(
                title: Text(
                  listChat.title,
                  style: const TextStyle(
                      fontSize: 18, fontWeight: FontWeight.w700),
                ),
                subtitle: Padding(
                  padding: const EdgeInsets.only(top: 5),
                  child: Row(
                    children: [
                      Icon(
                        seenStatusColor == Colors.blue
                            ? Icons.done_all
                            : Icons.done,
                        size: 18,
                        color: seenStatusColor,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 6.0),
                        child: Text(
                          listChat.subTitle,
                          style: const TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w400),
                        ),
                      ),
                    ],
                  ),
                ),
                trailing: const Text('Kemarin'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
