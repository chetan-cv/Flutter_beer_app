import 'package:flutter/material.dart';
import '../screens/home.dart';
class App extends StatelessWidget {
  Widget build(BuildContext context){
    return MaterialApp(
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      title:'Beer',
      home:  Scaffold(
      appBar: AppBar(
        title: Text('Popular Beers',style: TextStyle(color: Colors.white,)),
        centerTitle: true,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color(0xFF1f4037),
                Color(0xFF99f2c8),
                //Color(0xFFF7971E),
              ],
            )
          ),
        ),
        ),
        body: Home(),
      ),
    );
  }
}