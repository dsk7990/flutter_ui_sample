import 'package:flutter/material.dart';

class MessagesPage extends StatelessWidget {
  const MessagesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 5,
      shrinkWrap: true,
      itemBuilder: (context, position) {
        return const Card(
          color: Colors.grey,
          child: ListTile(
            title: Text(
              'John Doe',
              style: TextStyle(color: Colors.white),
            ),
            subtitle: Text(
              'Hello, how are you?',
              style: TextStyle(color: Colors.white),
            ),
          ),
        );
      },
    );
  }
}
