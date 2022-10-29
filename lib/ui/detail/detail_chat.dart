import 'package:flutter/material.dart';
import 'package:chat_bubbles/chat_bubbles.dart';
import 'package:wa_clone_ui/ui/model/list_chat.dart';

class DetailChat extends StatefulWidget {
  final ListChat listChat;
  const DetailChat({Key? key, required this.listChat}) : super(key: key);

  @override
  State<DetailChat> createState() => _DetailChatState();
}

class _DetailChatState extends State<DetailChat> {
  final String _message = '';
  TextEditingController? textFieldController;
  final TextInputAction _textInputAction = TextInputAction.newline;
  final now = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffece5dd),
      appBar: AppBar(
        toolbarHeight: 80,
        backgroundColor: const Color.fromARGB(255, 14, 119, 107),
        leading: const Icon(Icons.arrow_back_outlined),
        title: Wrap(
          crossAxisAlignment: WrapCrossAlignment.center,
          children: [
            CircleAvatar(
              radius: 25,
              backgroundImage: AssetImage(widget.listChat.image),
            ),
            const SizedBox(width: 10),
            Text(widget.listChat.title),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.videocam),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.call),
          ),
          PopupMenuButton(
              position: PopupMenuPosition.under,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)),
              itemBuilder: (context) {
                return [
                  const PopupMenuItem(child: Text('Lihat kontak')),
                  const PopupMenuItem(child: Text('Media, tautan, dan dok')),
                  const PopupMenuItem(child: Text('Cari')),
                  const PopupMenuItem(child: Text('Bisukan notifikasi')),
                  const PopupMenuItem(child: Text('Pesan sementara')),
                  const PopupMenuItem(child: Text('Walpapper')),
                  PopupMenuItem(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text('Lainnya'),
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.arrow_right,
                              color: Colors.black,
                            ))
                      ],
                    ),
                  ),
                ];
              }),
        ],
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: <Widget>[
                const SizedBox(height: 10),
                DateChip(
                  date: DateTime(now.year, now.month, now.day - 1),
                  color: Colors.white70,
                ),
                const SizedBox(height: 10),
                const BubbleSpecialOne(
                  text: 'Hi, saya menggunakan WhatsApp? ',
                  isSender: false,
                  color: Colors.white,
                  textStyle: TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
          Container(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  Flexible(
                    flex: 1,
                    child: Container(
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(30.0)),
                        color: Colors.white,
                      ),
                      child: Row(
                        children: <Widget>[
                          IconButton(
                            padding: const EdgeInsets.all(0.0),
                            // disabledColor: iconColor,
                            color: Colors.grey,
                            icon: const Icon(Icons.insert_emoticon),
                            onPressed: () {},
                          ),
                          Flexible(
                            child: TextField(
                              controller: textFieldController,
                              textCapitalization: TextCapitalization.sentences,
                              textInputAction: _textInputAction,
                              decoration: const InputDecoration(
                                border: InputBorder.none,
                                contentPadding: EdgeInsets.all(0.0),
                                hintText: 'Type a message',
                                hintStyle: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 16.0,
                                ),
                                counterText: '',
                              ),
                              keyboardType: TextInputType.multiline,
                              maxLines: null,
                              maxLength: 100,
                            ),
                          ),
                          IconButton(
                            color: Colors.grey,
                            icon: const Icon(Icons.attach_file),
                            onPressed: () {},
                          ),
                          _message.isEmpty || _message == null
                              ? IconButton(
                                  color: Colors.grey,
                                  icon: const Icon(Icons.camera_alt),
                                  onPressed: () {},
                                )
                              : Container(),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 4.0),
                    child: FloatingActionButton(
                      elevation: 2.0,
                      backgroundColor: const Color(0xFF128c7e),
                      foregroundColor: Colors.white,
                      child: _message.isEmpty || _message == null
                          ? const Icon(Icons.mic)
                          : const Icon(Icons.send),
                      onPressed: () => (_message),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
