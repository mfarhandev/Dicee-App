import 'package:flutter/material.dart';
import 'dart:math';

void main()
{
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
        backgroundColor: Colors.red,
      appBar: AppBar(
        title:Center(child: Text('Dicee')),
        backgroundColor: Colors.red,
      ),
      body: Dicee(),
    ),
  ),
  );
}

class Dicee extends StatefulWidget {
  const Dicee({Key? key}) : super(key: key);

  @override
  State<Dicee> createState() => _DiceeState();
}

class _DiceeState extends State<Dicee> {
  int LeftDicenumber = 1 ;
  int RightDicenumber = 1 ;
  void DiceeRoll()
  {
    LeftDicenumber = Random().nextInt(6)+1;
    RightDicenumber = Random().nextInt(6)+1;
  }
  @override
  Widget build(BuildContext context) {


    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              onPressed: ()
              {
                setState( () {
                   DiceeRoll();
                });
              },
              child:Image.asset('images/dice$LeftDicenumber.png'),
            ),
          ),
          Expanded(
            child: TextButton(
              onPressed: ()
                {
                  setState( ()
                      {
                        DiceeRoll();
                      });
                },
                child: Image.asset('images/dice$RightDicenumber.png'),
            ),
          ),
        ],
      ),
    );
  }
}
