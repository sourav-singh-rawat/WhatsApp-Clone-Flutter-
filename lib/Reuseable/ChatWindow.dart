import 'package:flutter/material.dart';

class ChatWindow extends StatefulWidget {
  final String name,imageUrl;
  ChatWindow(this.name,this.imageUrl);
  @override
  _ChatWindowState createState() => _ChatWindowState(name,imageUrl);
}

class _ChatWindowState extends State<ChatWindow> {
  final String name,imageUrl;
  _ChatWindowState(this.name,this.imageUrl);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: <Widget>[
            CircleAvatar(
              backgroundImage: NetworkImage(imageUrl),
            ),
            Container(width: 8.0,),
            Container(
              width: 80.0,
              child:Text(name,style:TextStyle(color: Colors.white)),
            ),
          ],
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.videocam),
            onPressed: (){},
            color: Colors.white,
          ),
          IconButton(
            icon: Icon(Icons.call),
            onPressed: (){},
            color: Colors.white,
          ),
          IconButton(
            icon: Icon(Icons.more_vert),
            onPressed: (){},
            color: Colors.white,
          ),
        ],
      ),
      body: ,
    );
  }
}