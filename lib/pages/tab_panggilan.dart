import 'package:flutter/material.dart';
import 'package:learn_youtube/widget/call_card.dart';
import 'package:faker/faker.dart';

class CallPage extends StatelessWidget {
  const CallPage({
    Key? key,
    required this.faker,
  }) : super(key: key);

  final Faker faker;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        CallCard(
          profile: 'https://picsum.photos/id/181/200/300',
          name: faker.person.name(),
          time: '7 Juni 19.16',
          calls: Colors.red,
          logo: Icons.arrow_back_rounded,
          actions: Icons.phone,
        ),
        CallCard(
          profile: 'https://picsum.photos/id/562/200/300',
          name: faker.person.name(),
          time: '1 Juni 20.03',
          calls: Colors.green,
          logo: Icons.arrow_forward_rounded,
          actions: Icons.phone,
        ),
        CallCard(
          profile: 'https://picsum.photos/id/354/200/300',
          name: faker.person.name(),
          time: '15 Mei 10.03',
          calls: Colors.green,
          logo: Icons.arrow_forward_rounded,
          actions: Icons.videocam,
        ),
      ],
    );
  }
}
