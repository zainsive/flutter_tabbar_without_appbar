import 'package:flutter/material.dart';
import 'package:tabbar_app/Screen/Screen1.dart';
import 'package:tabbar_app/Screen/Screen2.dart';
import 'package:tabbar_app/Screen/Screen3.dart';
import 'package:tabbar_app/Screen/Screen4.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 4, 
        child: SafeArea(
          child: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.white,
              elevation: 0.0,
              flexibleSpace: const TabBar(
                indicatorColor: Colors.black,
                tabs: [
                Tab(icon: Icon(Icons.home, color: Colors.black,),),
                Tab(icon: Icon(Icons.directions_bike, color: Colors.black,),),
                Tab(icon: Icon(Icons.directions_boat, color: Colors.black,),),
                Tab(icon: Icon(Icons.settings, color: Colors.black,),),
              ]),
            ),
            body: const TabBarView(children: [
              Screen1(),
              Screen2(),
              Screen3(),
              Screen4()
            ]),
          ),
        )
        ),
    );
  }
}