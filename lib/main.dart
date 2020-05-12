import 'dart:async';
import 'package:AlgoReady/about.dart';
import 'package:AlgoReady/mycard.dart';
import 'package:AlgoReady/pages/data_structure.dart';
import 'package:AlgoReady/pages/searching_algo.dart';
import 'package:AlgoReady/pages/sorting_algo.dart';
import 'package:AlgoReady/pages/time_complexity.dart';
import 'package:flutter/material.dart';
import 'dart:ui' as ui;

void main() => runApp(MyApp());

//Using Bloc
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      
      stream: bloc.darkThemeEnabled,
      initialData: false,
      builder: (context, snapshot) => MaterialApp(
          theme: snapshot.data ? ThemeData.dark() : ThemeData.light(),
          home: HomePage(snapshot.data)),
    );
  }
}

class HomePage extends StatelessWidget {
  final bool darkThemeEnabled;
  
  HomePage(this.darkThemeEnabled);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        title: Text("AlgoReady"),
        centerTitle: true,
        backgroundColor: Color(0xFFE74292),
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  padding: EdgeInsets.all(20.0),
                  
                  decoration: BoxDecoration(
                          color: darkThemeEnabled ? Colors.grey[850] : Colors.white70,
                          borderRadius: BorderRadius.all(Radius.circular(50)),
                          boxShadow: [
                            BoxShadow(
                                color: darkThemeEnabled ? Colors.black87 : Colors.grey[500],
                                offset: Offset(4.0, 4.0),
                                blurRadius: 15.0,
                                spreadRadius: 1.0),
                            BoxShadow(
                                color: darkThemeEnabled ? Colors.grey[800] : Colors.white60,
                                offset: Offset(-4.0, -4.0),
                                blurRadius: 15.0,
                                spreadRadius: 1.0),
                          ]),
                    
                  child: RichText(
                      text: TextSpan(
                        text: 'A ',
                        style: TextStyle(
                          color: darkThemeEnabled?Colors.white:Colors.black,
                          fontSize: 30.0,
                        ),
                        children: <TextSpan>[
                          TextSpan(text: 'Data Structure', style: TextStyle(fontWeight: FontWeight.bold)),
                          TextSpan(text: ' is a particular way of organizing data in a computer so that it can be used effectively.'),
                        ],
                      ),
                    ),
                ),
              ),

              Padding(padding: const EdgeInsets.all(10.0)),

              Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  
                                  children: <Widget>[
                                    Padding(padding: const EdgeInsets.all(10.0)),  
                                    Expanded(  //* Account Book
                                        child: Container(
                                          
                                          decoration: BoxDecoration(
                                            color: darkThemeEnabled ? Colors.grey[850] : Colors.white70,
                                            borderRadius: BorderRadius.circular(20.0),
                                            boxShadow: [
                                              BoxShadow(
                                                  color: darkThemeEnabled ? Colors.black87 : Colors.grey[500],
                                                  offset: Offset(4.0, 4.0),
                                                  blurRadius: 15.0,
                                                  spreadRadius: 1.0),
                                              BoxShadow(
                                                  color: darkThemeEnabled ? Colors.grey[800] : Colors.white60,
                                                  offset: Offset(-4.0, -4.0),
                                                  blurRadius: 15.0,
                                                  spreadRadius: 1.0),
                                            ]
                                          ),
                                            
                                          child: new MyCard(
                                            icon:new IconButton(
                                              splashColor: Colors.grey,
                                              icon: new Icon(Icons.sort),
                                              iconSize: 90.0,
                                              color: Colors.pink,
                                              onPressed: () => Navigator.of(context).push(
                                                MaterialPageRoute(
                                                  builder: (BuildContext context) => sort_algo()
                                                ),
                                              ),
                                            ),
                                            title: new Text("Sorting Algorithms")
                                          ),
                                        ),
                                    ),
                                    Padding(padding: const EdgeInsets.all(10.0)),
                                    
                                    
                                    Expanded(
                                      child: Container(
                                        
                                        decoration: BoxDecoration(
                                            color: darkThemeEnabled ? Colors.grey[850] : Colors.white70,
                                            borderRadius: BorderRadius.circular(20.0),
                                            boxShadow: [
                                              BoxShadow(
                                                  color: darkThemeEnabled ? Colors.black87 : Colors.grey[500],
                                                  offset: Offset(4.0, 4.0),
                                                  blurRadius: 15.0,
                                                  spreadRadius: 1.0),
                                              BoxShadow(
                                                  color: darkThemeEnabled ? Colors.grey[800] : Colors.white60,
                                                  offset: Offset(-4.0, -4.0),
                                                  blurRadius: 15.0,
                                                  spreadRadius: 1.0),
                                            ]
                                          ),
                                        child: MyCard(
                                          title: Text("Searching Algorithms"),
                                          icon: IconButton(
                                            icon: Icon(Icons.search), 
                                            onPressed: () => Navigator.of(context).push(
                                                MaterialPageRoute(
                                                  builder: (BuildContext context) => search_algo()
                                                ),
                                              ),
                                            iconSize: 90.0,
                                            color: Colors.red,
                                            splashColor: Colors.grey,
                                          ),
                                        ),
                                      ),
                                    ),

                                    Padding(padding: const EdgeInsets.all(10.0)),
                                  ],
                                ),

                                
                                Padding(padding: const EdgeInsets.all(10.0)),
                                Row(
                                  children: <Widget>[
                                    Padding(padding: const EdgeInsets.all(10.0)),
                                    Expanded(  //* Time Complexities
                                      child: Container(
                                        
                                        decoration: BoxDecoration(
                                            color: darkThemeEnabled ? Colors.grey[850] : Colors.white70,
                                            borderRadius: BorderRadius.circular(20.0),
                                            boxShadow: [
                                              BoxShadow(
                                                  color: darkThemeEnabled ? Colors.black87 : Colors.grey[500],
                                                  offset: Offset(4.0, 4.0),
                                                  blurRadius: 15.0,
                                                  spreadRadius: 1.0),
                                              BoxShadow(
                                                  color: darkThemeEnabled ? Colors.grey[800] : Colors.white60,
                                                  offset: Offset(-4.0, -4.0),
                                                  blurRadius: 15.0,
                                                  spreadRadius: 1.0),
                                            ]
                                          ),
                                        child: new MyCard(
                                          title: new Text("Time Complexities"),
                                          icon: ShaderMask(
                                              blendMode: BlendMode.srcIn,
                                              shaderCallback: (Rect bounds) {
                                                return  ui.Gradient.linear(
                                                  Offset(4.0,24.0),
                                                  Offset(24.0,4.0),
                                                  [
                                                    
                                                    Colors.orangeAccent,
                                                    Colors.blue[500],
                                                    
                                                  ],
                                                );
                                              },
                                          child:new IconButton(
                                            splashColor: Colors.grey,
                                            icon: new Icon(Icons.timer),
                                            iconSize: 90.0,
                                            onPressed: () => Navigator.of(context).push(
                                              MaterialPageRoute(
                                                builder: (BuildContext context) => TimeComplexity()
                                              ),
                                            ),
                                          ),
                                            
                                          ),
                                        ),
                                        
                                        ),
                                      ),
                                    
                                    Padding(padding: const EdgeInsets.all(10.0)),
                                    
                                    
                                      
                                    
                                    
                                    Expanded(
                                      child: Container(
                                        
                                        decoration: BoxDecoration(
                                            color: darkThemeEnabled ? Colors.grey[850] : Colors.white70,
                                            borderRadius: BorderRadius.circular(20.0),
                                            boxShadow: [
                                              BoxShadow(
                                                  color: darkThemeEnabled ? Colors.black87 : Colors.grey[500],
                                                  offset: Offset(4.0, 4.0),
                                                  blurRadius: 15.0,
                                                  spreadRadius: 1.0),
                                              BoxShadow(
                                                  color: darkThemeEnabled ? Colors.grey[800] : Colors.white60,
                                                  offset: Offset(-4.0, -4.0),
                                                  blurRadius: 15.0,
                                                  spreadRadius: 1.0),
                                            ]
                                          ),
                                        child: MyCard(
                                          title: Text("Data Structures"),
                                          icon: IconButton(
                                            icon: Icon(Icons.device_hub), 
                                            onPressed: () => Navigator.of(context).push(
                                              MaterialPageRoute(builder: (BuildContext context) => DataStructure())
                                            ),
                                            iconSize: 90.0,
                                            color: Colors.red,
                                            splashColor: Colors.grey,
                                          ),
                                        ),
                                      ),
                                    ),

                                    Padding(padding: const EdgeInsets.all(10.0)),
                                  ],
                                ),                                            
            ],
          ),
        ),
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text("DSAReady"),
              decoration: BoxDecoration(
                color: Color(0xFFE74292),
              ), accountEmail: Text("A small app to learn Data Structures and Algorithms"),
          
            ),
              
          
            ListTile(
              title: Text("AlgoReady Theme"),
              trailing: Switch(
                value: darkThemeEnabled,
                onChanged: bloc.changeTheme,
              ),
            ),

            ListTile(
              title: Text("Sorting Algorithms"),
              leading: Icon(Icons.sort),
              onTap: () => Navigator.of(context).push(
                                              MaterialPageRoute(
                                                builder: (BuildContext context) => sort_algo()
                                              ),
                                            ),
            ),

            ListTile(
              title: Text("Searching Algorithms"),
              leading: Icon(Icons.search),
              onTap: () => Navigator.of(context).push(
                                              MaterialPageRoute(
                                                builder: (BuildContext context) => search_algo()
                                              ),
                                            ),
            ),

            ListTile(
              title: Text("Time Complexities"),
              leading: Icon(Icons.timer),
              onTap: () => Navigator.of(context).push(
                MaterialPageRoute(builder: (BuildContext context) => TimeComplexity())
              ),
            ),

            ListTile(
              title: Text("Data Structures"),
              leading: Icon(Icons.device_hub),
              onTap: () => Navigator.of(context).push(
                MaterialPageRoute(builder: (BuildContext context) => DataStructure())
              ),
            ), 

            ListTile(
              title: Text("About"),
              leading: Icon(Icons.info_outline),
              onTap: () => Navigator.of(context).push(
                MaterialPageRoute(builder: (BuildContext context) => AboutData())
              ),
            ), 
          ],
        ),
      ),
    );
  }
}

class Bloc {
  final _themeController = StreamController<bool>();
  get changeTheme => _themeController.sink.add;
  get darkThemeEnabled => _themeController.stream;
}

final bloc = Bloc();

