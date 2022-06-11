import 'package:flutter/material.dart';

class MyStatCard extends StatelessWidget {
  const MyStatCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Stack(
        children: [
          const CircleAvatar(
            backgroundImage:
                NetworkImage('https://picsum.photos/id/100/200/300'),
            radius: 25,
          ),
          Positioned(
            right: 0,
            bottom: 0,
            child: Container(
              width: 20,
              height: 20,
              decoration: const BoxDecoration(
                  color: Color(0xff128c7e), shape: BoxShape.circle),
              child: const Center(
                child: Icon(
                  Icons.add,
                  size: 18,
                  color: Colors.white,
                ),
              ),
            ),
          )
        ],
      ),
      title: const Text(
        'Status Saya',
        style: TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
      subtitle: const Text(
        'Ketuk untuk menambahkan pembaharuan status',
        overflow: TextOverflow.ellipsis,
      ),
      onTap: () {},
    );
  }
}
