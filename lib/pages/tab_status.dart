import 'package:flutter/material.dart';
import 'package:faker/faker.dart';
import 'package:learn_youtube/widget/myStat_card.dart';
import 'package:learn_youtube/widget/status_card.dart';

class StatusPage extends StatelessWidget {
  const StatusPage({Key? key, required this.faker}) : super(key: key);

  final Faker faker;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        MyStatCard(),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Text(
            'Pembaruan Terkini',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        StatCard(
          profile: 'https://picsum.photos/id/50/200/300',
          name: faker.person.name(),
          time: 'Hari ini 00.26',
        ),
        StatCard(
          profile: 'https://picsum.photos/id/156/200/300',
          name: faker.person.name(),
          time: 'Kemarin 22.06',
        ),
      ],
    );
  }
}
