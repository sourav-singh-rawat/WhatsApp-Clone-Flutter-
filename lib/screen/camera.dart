import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';
class Camera extends StatefulWidget {
  @override
  _CameraState createState() => _CameraState();
}

class _CameraState extends State<Camera> {

  File _image;
  Future getImage() async{
    var image = await ImagePicker.pickImage(
      source: ImageSource.camera,
      maxHeight: 800.0,
      );
    setState(() {
      _image=image;
    }); 
  }

  @override
  void initState(){
    super.initState();
    getImage();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: _image == Null? Text("No Image Selected!") 
      :Container(
        child: Stack(
          children: <Widget>[
            Image.file(_image),
            Padding(
              padding: EdgeInsets.only(top:800.0),
              child:FloatingActionButton( 
              child: Icon(Icons.send,color: Colors.white,),
              onPressed: (){},
              backgroundColor: Theme.of(context).accentColor,
            ),),
          ],
        )
      ),
    );
  }
}