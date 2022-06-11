import 'package:flutter/material.dart';

class StatCard extends StatelessWidget {
  String? profile;
  String? name;
  String? time;

  StatCard({
    this.profile,
    this.name,
    this.time,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: NetworkImage('$profile'),
        radius: 25,
      ),
      title: Text('$name'),
      subtitle: Text(
        '$time',
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
      ),
      onTap: () {},
    );
  }
}
