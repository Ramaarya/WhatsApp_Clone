import 'package:flutter/material.dart';

class ChatCard extends StatelessWidget {
  String? profile;
  String? name;
  String? chatting;
  String? time;

  ChatCard({this.profile, this.name, this.chatting, this.time});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: NetworkImage('$profile'),
        radius: 25,
      ),
      title: Text('$name'),
      subtitle: Text(
        '$chatting',
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
      ),
      trailing: Text('$time'),
      onTap: () {},
    );
  }
}
