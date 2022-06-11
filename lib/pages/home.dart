import 'package:flutter/material.dart';
import 'package:learn_youtube/pages/tab_chat.dart';
import 'package:faker/faker.dart';
import 'package:learn_youtube/pages/tab_panggilan.dart';
import 'package:learn_youtube/pages/tab_status.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  // tab widget
  List<Tab> myTab = const [
    Tab(
      text: 'CHAT',
    ),
    Tab(
      text: 'STATUS',
    ),
    Tab(
      text: 'PANGGILAN',
    )
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: myTab.length,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff128c7e),
          title: const Text('WhatsApp Clone'),
          actions: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
            IconButton(
                onPressed: () {}, icon: const Icon(Icons.more_vert_rounded)),
          ],
          bottom: TabBar(
            indicatorColor: Colors.white,
            tabs: myTab,
          ),
        ),
        body: TabBarView(
          children: [
            ChatPage(faker: faker),
            StatusPage(faker: faker),
            CallPage(faker: faker)
          ],
        ),
        floatingActionButton: FloatingActionButton(
          elevation: 0,
          backgroundColor: Color(0xff128c7e),
          onPressed: () {},
          child: Icon(Icons.chat),
        ),
      ),
    );
  }
}
