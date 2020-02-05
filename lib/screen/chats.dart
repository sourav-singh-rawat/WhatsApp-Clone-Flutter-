import 'package:flutter/material.dart';
import '../model/chat.dart';
import '../Reuseable/ChatWindow.dart';

class Chats extends StatefulWidget {
  @override
  _ChatsState createState() => _ChatsState();
}

class _ChatsState extends State<Chats> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        itemCount: messageData.length,
        itemBuilder: (context,index) => Column(
          children: <Widget>[
            Divider(height: 20.0,),
            ListTile(
              leading: CircleAvatar(
                maxRadius: 25,
                foregroundColor: Theme.of(context).accentColor,
                backgroundImage: NetworkImage(messageData[index].imageUrl),
              ),
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(messageData[index].name,style: TextStyle(fontWeight: FontWeight.bold),),
                  Text(messageData[index].time,style:TextStyle(color: Colors.grey,fontSize: 16.0))
                ],
              ),
              subtitle: Container(
                padding: EdgeInsets.only(top: 5.0),
                child: Text(messageData[index].message,style: TextStyle(color: Colors.grey,fontSize: 15.0),),
              ),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) => ChatWindow(messageData[index].name,messageData[index].imageUrl),
                ));
              },
            )
          ],
        ),
      ),      
    );
  }
}