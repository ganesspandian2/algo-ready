import 'package:flutter/material.dart';

class AboutData extends StatelessWidget {
  const AboutData({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("About"),
        backgroundColor: Color(0xFFE74292),
        centerTitle: true,
      ),

      body:  Container(
        padding: const EdgeInsets.all(10.0),
        child: Center(child: Text("This app is not developed for any commercial purpose.I built this app only for learning Flutter",style: TextStyle(fontSize: 25.0,color: Colors.pink),))),
                
    );
  }
}