import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  Profile(this.name);
  String name;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('$name'),
      ),
      body: Center(
        child: CircleAvatar(
          backgroundColor: Colors.orange,
          radius: 80.0,
          child: Icon(
            Icons.person,
            color: Colors.black,
            size: 80.0,
          ),
        ),
      ),
    );
  }
}
