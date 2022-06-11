import 'package:flutter/material.dart';
import 'package:learn_youtube/widget/chat_card.dart';
import 'package:faker/faker.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({
    Key? key,
    required this.faker,
  }) : super(key: key);

  final Faker faker;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ChatCard(
          profile: 'https://picsum.photos/id/1/200/300',
          name: faker.person.name(),
          chatting: faker.lorem.sentence(),
          time: '10.21',
        ),
        ChatCard(
          profile: 'https://picsum.photos/id/2/200/300',
          name: faker.person.name(),
          chatting: faker.lorem.sentence(),
          time: '07.21',
        ),
        ChatCard(
          profile: 'https://picsum.photos/id/3/200/300',
          name: 'Ayang ayangan',
          chatting: 'cari dulu baru chat. kan belum ada',
          time: '13.21',
        ),
        ChatCard(
          profile: 'https://picsum.photos/id/4/200/300',
          name: faker.person.name(),
          chatting: faker.lorem.sentence(),
          time: '19.21',
        ),
        ChatCard(
          profile: 'https://picsum.photos/id/5/200/300',
          name: faker.person.name(),
          chatting: faker.lorem.sentence(),
          time: '22.21',
        ),
        ChatCard(
          profile: 'https://picsum.photos/id/6/200/300',
          name: faker.person.name(),
          chatting: faker.lorem.sentence(),
          time: 'yesterday',
        ),
        ChatCard(
          profile: 'https://picsum.photos/id/7/200/300',
          name: faker.person.name(),
          chatting: faker.lorem.sentence(),
          time: 'yesterday',
        ),
        ChatCard(
          profile: 'https://picsum.photos/id/8/200/300',
          name: faker.person.name(),
          chatting: faker.lorem.sentence(),
          time: 'yesterday',
        ),
        ChatCard(
          profile: 'https://picsum.photos/id/9/200/300',
          name: faker.person.name(),
          chatting: faker.lorem.sentence(),
          time: 'yesterday',
        ),
      ],
    );
  }
}
