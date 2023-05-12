
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main()
{
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        appBar: AppBar(
          backgroundColor: Colors.teal[600],
          title: Text('Ludo'),
        ),
        body: MyApps(),
      ),
    ),
  );
}
class MyApps extends StatefulWidget {
  const MyApps({Key? key}) : super(key: key);

  @override
  State<MyApps> createState() => _MyAppState();
}

class _MyAppState extends State<MyApps> {
  int leftbutton=1;
  int rightbutton=1;
  @override
  Widget build(BuildContext context) {

    return Center(
      child: Row(
        children: [
          Expanded(child: TextButton(child: Image.asset('images/dice$leftbutton.png'),
              onPressed: () // Anoynomous Function No Name of Function
              {
               setState(() {
                 leftbutton=Random().nextInt(6)+1;
                 rightbutton=Random().nextInt(6)+1;

               });
              }
          ),
          ),
          Expanded(child: TextButton(child: Image.asset('images/dice$rightbutton.png'),
              onPressed: ()
              {
                setState(() {
                  rightbutton=Random().nextInt(6)+1;
                  leftbutton=Random().nextInt(6)+1;
                });
              }
          ),
          ),
        ],
      ),
    );
  }
}
