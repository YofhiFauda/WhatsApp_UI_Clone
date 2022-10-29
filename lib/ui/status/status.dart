import 'package:flutter/material.dart';
import 'package:wa_clone_ui/ui/status/item_status.dart';

class StatusPage extends StatelessWidget {
  const StatusPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Stack(
                    children: const [
                      CircleAvatar(
                        backgroundColor: Color(0xff128C7E),
                        foregroundColor: Color(0xff128C7E),
                        radius: 30,
                        backgroundImage: AssetImage('assets/images/Me.jpg'),
                      ),
                      Positioned(
                        top: 40,
                        left: 40,
                        child: CircleAvatar(
                          radius: 10,
                          child: Icon(
                            Icons.add,
                            size: 20,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const Expanded(
                    child: ListTile(
                      title: Text('My Status'),
                      subtitle: Padding(
                        padding: EdgeInsets.only(top: 2.0),
                        child: Text('Tap to add status update'),
                      ),
                    ),
                  ),
                ],
              ),
              const Padding(
                padding: EdgeInsets.only(left: 10, top: 15, bottom: 10),
                child: Text('Pembaruan Terkini'),
              ),
              const ItemStatusTerkini(
                  statusImage: 'assets/images/cewe 1.jpg',
                  statusTitle: 'Jessie Woo',
                  statusTime: '45 menit yang lalu'),
              const ItemStatusTerkini(
                statusImage: 'assets/images/cowo 1.jpg',
                statusTitle: 'Samantha Martin',
                statusTime: '2 Menit yang lalu',
              ),
              const ItemStatusTerkini(
                statusImage: 'assets/images/cowo 2.jpg',
                statusTitle: 'Nicolas Plum',
                statusTime: '30 Menit yang lalu',
              ),
              const ItemStatusTerkini(
                statusImage: 'assets/images/cewe 7.jpg',
                statusTitle: 'Olivie Marlee',
                statusTime: '19 Menit yang lalu',
              ),
              const ItemStatusTerkini(
                statusImage: 'assets/images/cewe 8.jpg',
                statusTitle: 'Xena Catherine',
                statusTime: '1 Menit yang lalu',
              ),
              const Padding(
                padding: EdgeInsets.only(left: 10, top: 15, bottom: 10),
                child: Text('Pembaruan Dilihat'),
              ),
              const ItemStatusDilihat(
                statusImage: 'assets/images/cowo 4.jpeg',
                statusTitle: 'Trip Murphy',
                statusTime: '50 Menit yang lalu',
              ),
              const ItemStatusDilihat(
                statusImage: 'assets/images/cewe 5.jpg',
                statusTitle: 'Jane William',
                statusTime: '10 Menit yang lalu',
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: SizedBox(
        height: 150,
        width: 75,
        child: FittedBox(
          child: Column(
            children: [
              FloatingActionButton(
                  onPressed: () {
                    //TODO: handle the press
                  },
                  backgroundColor: Colors.white70,
                  child: const Icon(
                    Icons.edit,
                    color: Colors.black,
                  )),
              const SizedBox(
                height: 10,
              ),
              FloatingActionButton(
                  onPressed: () {
                    //TODO: handle the press
                  },
                  backgroundColor: const Color(0xFF12A795),
                  child: const Icon(Icons.camera_alt)),
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}
