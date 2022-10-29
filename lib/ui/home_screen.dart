import 'package:flutter/material.dart';
import 'package:wa_clone_ui/ui/chat/chat.dart';
import 'package:wa_clone_ui/ui/panggilan/panggilan.dart';
import 'package:wa_clone_ui/ui/status/status.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          elevation: 0,
          backgroundColor: const Color(0xFF128C7E),
          title: const Text(
            'WhatsApp',
            style: TextStyle(fontSize: 24),
          ),
          actions: [
            Row(
              children: [
                IconButton(
                  icon: const Icon(Icons.search),
                  tooltip: 'Open shopping cart',
                  onPressed: () {
                    //TODO: handle the press
                  },
                ),
                PopupMenuButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    itemBuilder: (context) {
                      return [
                        const PopupMenuItem(child: Text('Group baru')),
                        const PopupMenuItem(child: Text('Siaran baru')),
                        const PopupMenuItem(child: Text('Perangkat tertaut')),
                        const PopupMenuItem(child: Text('Pesan berbintang')),
                        const PopupMenuItem(child: Text('Setelan')),
                      ];
                    }),
              ],
            ),
          ],
          bottom: const TabBar(
            indicatorSize: TabBarIndicatorSize.tab,
            indicatorColor: Colors.white,
            indicatorWeight: 2,
            labelColor: Colors.white,
            labelStyle: TextStyle(color: Colors.white, fontSize: 16),
            tabs: [
              Tab(
                iconMargin: EdgeInsets.all(100),
                child: Icon(Icons.camera_alt_rounded),
              ),
              Tab(text: 'Chat'),
              Tab(text: 'Status'),
              Tab(text: 'Panggilan'),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            Center(child: Text('This feature is coming soon')),
            ChatPage(),
            StatusPage(),
            PaanggilanPage(),
          ],
        ),
      ),
    );
  }
}
