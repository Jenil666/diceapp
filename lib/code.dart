import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class code extends StatefulWidget {
  const code({Key? key}) : super(key: key);

  @override
  State<code> createState() => _codeState();
}

class _codeState extends State<code> {
  List l1 =[
    "assets/image/dice 1.png",
  "assets/image/dice 2.png",
  "assets/image/dice 3.png",
  "assets/image/dice 4.png",
  "assets/image/dice 5.png",
  "assets/image/dice 6.png",
  ];
  int i=0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Text(
            "Dice App",
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
            ),
          ),
        ),
        body: Center(
          child: InkWell(
            onTap: (){
              var rnd = Random();
              setState(() {
                i = rnd.nextInt(6);
              });
            },
            child: Image.asset(
              l1[i],
              height: 200,
              width: 200,
            ),
          )
        ),
      ),
    );
  }
}
