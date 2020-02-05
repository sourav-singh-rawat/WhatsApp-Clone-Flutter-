import 'package:flutter/material.dart';
import '../model/calls.dart';

class Calls extends StatefulWidget {
  @override
  _CallsState createState() => _CallsState();
}

class _CallsState extends State<Calls> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        itemCount: callData.length,
        itemBuilder: (context,index) => Column(
          children: <Widget>[
            Divider(height: 20.0,),
            ListTile(
              leading: CircleAvatar(
                foregroundColor: Theme.of(context).accentColor,
                backgroundImage: NetworkImage(callData[index].imageUrl),
                maxRadius: 25,
              ),
              title:Text(callData[index].name,style:TextStyle(fontWeight: FontWeight.bold)),
              subtitle: Container(
                padding: EdgeInsets.only(top:3.0),
                child: Text(callData[index].time,style:TextStyle(color:Colors.grey,fontSize:15.0)),
              ),
              trailing: Icon(Icons.call,color:Theme.of(context).primaryColor,size: 30.0,),
              selected: true,
              onTap: () {},
            )
          ],
        ),
      ),     
    );
  }
}