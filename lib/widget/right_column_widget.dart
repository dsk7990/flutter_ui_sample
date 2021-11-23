import 'package:flutter/material.dart';

class RightColumn extends StatelessWidget {
  const RightColumn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: const [
          Icon(
            Icons.favorite_border,
            color: Colors.white,
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            '1.1m',
            style: TextStyle(color: Colors.white),
          ),
          SizedBox(
            height: 15,
          ),
          Icon(
            Icons.comment_outlined,
            color: Colors.white,
          ),
          SizedBox(
            height: 5,
          ),
          Text('464', style: TextStyle(color: Colors.white)),
          SizedBox(
            height: 15,
          ),
          Icon(
            Icons.send,
            color: Colors.white,
          ),
          SizedBox(
            height: 15,
          ),
          Icon(
            Icons.more_vert,
            color: Colors.white,
          ),
          SizedBox(
            height: 15,
          ),
          Icon(
            Icons.person,
            color: Colors.white,
          ),
          SizedBox(
            height: 15,
          ),
        ],
      ),
    );
  }
}
