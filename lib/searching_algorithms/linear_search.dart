import 'package:flutter/material.dart';

class LinearSearch extends StatelessWidget {
  const LinearSearch({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Linear Search"),
        centerTitle: true,
        backgroundColor: Color(0xFFE74292),
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: <Widget>[
            Padding(padding: const EdgeInsets.all(10.0)),

            Container(
                  padding: EdgeInsets.all(20.0),
                  
                  decoration: BoxDecoration(
                          
                          borderRadius: BorderRadius.all(Radius.circular(50)),
                          boxShadow: [
                            BoxShadow(
                                
                                offset: Offset(4.0, 4.0),
                                blurRadius: 15.0,
                                spreadRadius: 1.0),
                            BoxShadow(
                                
                                offset: Offset(-4.0, -4.0),
                                blurRadius: 15.0,
                                spreadRadius: 1.0),
                          ]),
                    
                  child: RichText(
                      text: TextSpan(
                        text: 'A ',
                        style: TextStyle(
                          // color: darkThemeEnabled?Colors.white:Colors.black,
                          fontSize: 30.0,
                        ),
                        children: <TextSpan>[
                          TextSpan(text: 'Linear Search', style: TextStyle(fontWeight: FontWeight.bold)),
                          TextSpan(text: ' is one of the simplest searching algorithm in which targeted item in sequentially matched with each item in a list. It is worst searching algorithm with worst case time complexity O (n).'),
                        ],
                      ),
                    ),
                ),
                
                Padding(padding: const EdgeInsets.all(10.0)),

                Image.asset("assets/images/linear_search.png"),
          ],
        ),
      ),
    );
  }
}