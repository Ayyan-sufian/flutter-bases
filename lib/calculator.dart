import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bases/contect.dart';

class CalculatorPg extends StatefulWidget {

  CalculatorPg({super.key});

  @override
  State<CalculatorPg> createState() => _CalculatorPgState();
}

class _CalculatorPgState extends State<CalculatorPg> {
  var no1Controller = TextEditingController();

  var no2Controller = TextEditingController();

  var result = '';

  @override
  Widget build(BuildContext context) {
  return Scaffold(
  appBar: AppBar(
  title: Text('Calculator',style: TextStyle(color: Colors.white),),
  backgroundColor: Colors.blueGrey,
  centerTitle: true,
  ),

  body:Container(
    decoration: BoxDecoration(
      gradient: LinearGradient(colors: [
        Colors.blue.shade200,
        Colors.blueGrey.shade200,
      ],
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
      ),

    ),
  child: Center(
    child: SingleChildScrollView(
      child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
      Padding(
      padding: const EdgeInsets.all(50.0),
      child: Text('Calculator',style: TextStyle(fontSize: 40,fontWeight: FontWeight.w500),),
      ),
      Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(
      decoration: InputDecoration(
      labelText: 'Enter number',
      focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(11),
      borderSide: BorderSide(
      color: Colors.black,
      style: BorderStyle.solid,
      width: 2
      )
      ),
      enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(
      color: Colors.blue,
      style: BorderStyle.solid,
      width: 2
      )
      )
      ),
      keyboardType: TextInputType.number,
      controller: no1Controller,
      ),
      ),
      Container(
      height: 11,
      ),
      Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(
      decoration:InputDecoration(
      labelText: 'Enter number',
      focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(11),
      borderSide: BorderSide(
      color: Colors.black,
      style: BorderStyle.solid,
      width: 2
      )
      ),
      enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(
      color: Colors.blue,
      style: BorderStyle.solid,
      width: 2
      )
      )
      ),
      keyboardType: TextInputType.number,
      controller: no2Controller,
      ),
      ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
              width: 400,
              height: 50,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.blue,
                    width: 2,
                  )
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 10.0,left: 8),
                child: Text(
                  result,),
              )),
        ),
      Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
      ElevatedButton(onPressed: (){
      var no1 = int.parse( no1Controller.text.toString());
      var no2 = int.parse( no2Controller.text.toString());
      var sum = no1 + no2;
      result = 'Answer = $sum';
      setState(() {});
      }, child: Row(
        children: [
          Text('Add ',),
          Icon(Icons.add)
        ],
      )),
      ElevatedButton(onPressed: (){
      var no1 = int.parse( no1Controller.text.toString());
      var no2 = int.parse( no2Controller.text.toString());
      var sub = no1 - no2;
      result = 'Answer = $sub';
      setState(() {});
      }, child: Row(
        children: [
          Text('Sub '),
          Icon(CupertinoIcons.minus)
        ],
      ),),
      ElevatedButton(onPressed: (){
      var no1 = int.parse( no1Controller.text.toString());
      var no2 = int.parse( no2Controller.text.toString());
      var multi = no1 * no2;
      result = 'Answer = $multi';
      setState(() {});
      }, child: Row(
        children: [
          Text('Multi '),
          Icon(Icons.cancel_presentation_outlined)
        ],
      )),
      ElevatedButton(onPressed: (){
      var no1 = int.parse(no1Controller.text.toString());
      var no2 = int.parse(no2Controller.text.toString());
      var rem = no1 / no2;
      result = 'Answer = $rem';
      setState(() {});
      }, child: Row(
        children: [
          Text('Div '),
          Icon(Icons.percent)
        ],
      )),
      ],
      ),
      ),
      ],
      ),
    ),
  ),
  )
  );
  }
}