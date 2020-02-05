import 'package:flutter/material.dart';
import '../Reuseable/Wchat.dart';
import '../model/chat.dart';

class Status extends StatefulWidget {
  @override
  _StatusState createState() => _StatusState();
}

class _StatusState extends State<Status> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Wchat("My status", "Tap to add status update", messageData[2].imageUrl),
        Divider(),
        Heading("Resent Status"),
        Wchat(messageData[1].name, messageData[1].time, messageData[1].imageUrl),
        Wchat(messageData[3].name, messageData[3].time, messageData[3].imageUrl),
        Wchat(messageData[4].name, messageData[4].time, messageData[4].imageUrl),
        Heading("Viewed"),
        Wchat(messageData[2].name, messageData[5].time, messageData[6].imageUrl),
        Wchat(messageData[0].name, messageData[0].time, messageData[0].imageUrl),
      ],
    );
  }
}

class Heading extends StatelessWidget {
  final String heading;
  Heading(this.heading);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 5.0,top:5.0),
        child: Text(heading,
          style: TextStyle(color: Colors.grey,fontSize: 14.0),
        ),
      );
  }
}