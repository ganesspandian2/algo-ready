import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  MyCard({this.title, this.icon});

  final Widget title;
  final Widget icon;

  @override
  Widget build(BuildContext context) {
    return new Container(
      
      child: new Card(
        
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0)
        ),
        child: new Container(
          padding: new EdgeInsets.all(10.0),
          
          child: new Column(
            children: <Widget>[
              
              this.icon,
              this.title
            ]
          )
        )
      )
    );
  }
}