import 'package:flutter/material.dart';

class CallCard extends StatelessWidget {
  String? profile;
  String? name;
  String? time;
  Color? calls;
  IconData? logo;
  IconData? actions;

  CallCard({
    this.profile,
    this.name,
    this.time,
    this.calls,
    this.logo,
    this.actions,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: NetworkImage('$profile'),
        radius: 25,
      ),
      title: Text('$name'),
      subtitle: Row(
        children: [
          Icon(
            logo,
            size: 15,
            color: calls,
          ),
          Text(
            ' $time',
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
      trailing: IconButton(
          onPressed: () {},
          icon: Icon(
            actions,
            color: Color(0xff128c7e),
          )),
      onTap: () {},
    );
  }
}
