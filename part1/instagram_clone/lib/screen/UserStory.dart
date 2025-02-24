import 'package:flutter/material.dart';

class UserStory extends StatelessWidget {
  final String username;
  const UserStory({required this.username,super.key,});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4),
      child: Column(
        children: [
          Container(
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.all(10),
              width: 80,
              height: 80,
              decoration: BoxDecoration(
                  color: Colors.blue,
                  border: Border.all(color: Colors.blue),
                  borderRadius: BorderRadius.circular(100),
              ) ),
          Text(username),
        ],
      ),
    );
  }
}