

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget{
  final String btnName;
  final Icon? icon;
  final Color bgColor;
  final TextStyle? textStyle;
  final VoidCallback? callback;

  RoundedButton({
    required this.btnName,
    this.icon,
    this.bgColor = Colors.cyanAccent,
    this.textStyle,
    this.callback});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: (){
      callback!();
    },
        child:icon!=null?
        Row(
          children: [
            icon!,
            Container(
              width: 11,
            ),
            Text(
              btnName,
              style: TextStyle(),)
          ],
        )
            : Text(
          btnName,
          style: TextStyle(),
          ),
        style: ElevatedButton.styleFrom(
          backgroundColor: bgColor,
          shadowColor: bgColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(21),
              topRight: Radius.circular(21),
            )
          ),
        ),
    );
  }
}

//on main dart

// body:Center(
// child: Column(
// mainAxisAlignment: MainAxisAlignment.center,
// children: [
// Container(
// width: 150,
// height: 50,
// child: RoundedButton(
// btnName: 'play',
// icon: Icon(Icons.play_arrow),
// callback: (){
// print('Please Login !!');
// },
// textStyle: mTextStyle11(),
// ),
// ),
// Padding(
// padding: const EdgeInsets.all(8.0),
// child: Container(
// width: 200,
// height: 100,
// child: RoundedButton(
// btnName: 'Stop',
// icon: Icon(Icons.pause),
// callback: (){
// print('Please Login !!');
// },
// bgColor: Colors.brown,
// textStyle: mTextStyle11(),
// ),
// ),
// ),
// Padding(
// padding: const EdgeInsets.all(8.0),
// child: Container(
// width: 250,
// height: 50,
// child: RoundedButton(
// btnName: 'Login',
// icon: Icon(Icons.lock),
// callback: (){
// print('Please Login !!');
// },
// bgColor: Colors.deepOrange,
// textStyle: mTextStyle11(),
// ),
// ),
// ),
// ],
// ),
// )