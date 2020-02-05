import 'package:flutter/material.dart';

class Wchat extends StatelessWidget {
  final String name, time, imageUrl;
  Wchat(this.name,this.time,this.imageUrl);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        maxRadius: 25,
        foregroundColor: Colors.purple,
        backgroundImage: NetworkImage(imageUrl),
      ),
      title: Text(
        name,
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      subtitle: Text(time),
      onTap: (){},
    );
  }
}