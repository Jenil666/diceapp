import 'dart:math';
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class code extends StatefulWidget {
  const code({Key? key}) : super(key: key);

  @override
  State<code> createState() => _codeState();
}

class _codeState extends State<code> {
  List l1 = [
    "assets/image/dice 1.png",
    "assets/image/dice 2.png",
    "assets/image/dice 3.png",
    "assets/image/dice 4.png",
    "assets/image/dice 5.png",
    "assets/image/dice 6.png",
  ]; //images
  List l2 = [];
  int i = 0;
  TextEditingController num = TextEditingController();
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
        body: Column(
          children: [
            SizedBox(height: 20,),
            TextField(
              controller: num,
            ),
            SizedBox(height: 20,),
            InkWell(
              onTap: (){
                var ni=num.text;
                int n=int.parse(ni);
                l2.clear();
                setState(() {
                  for(i=0;i<n;i++)
                    {
                      l2.add(0);
                    }
                });
              },
              child: Container(
                height: 70,
                width: 150,
                color: Colors.purple,
                alignment: Alignment.center,
                child: Text(
                  "Generate",
                  style: TextStyle(
                      fontSize: 25,
                      color: Colors.black
                  ),
                ),
              ),
            ),
            SizedBox(height: 20,),
            Center(
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
              child: Row(
                children: l2
                    .map((e) => Image.asset(
                          l1[0],
                          height: 150,
                          width: 150,
                        ))
                    .toList(),
              ),
            )
            ),
            SizedBox(height: 20,),
          ],
        ),
      ),
    );
  }
}
