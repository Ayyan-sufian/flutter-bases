import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bases/calculator.dart';
import 'package:flutter_bases/contect.dart';
import 'package:flutter_bases/intro_page.dart';
import 'package:flutter_bases/splash_screen.dart';
import 'package:flutter_bases/ui_helper/util.dart';
import 'package:flutter_bases/widgit/rounded_btn.dart';
import 'package:intl/intl.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FlutterDemo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.grey),
          textTheme: TextTheme(
            headlineLarge: TextStyle(fontSize: 20,
                fontWeight: FontWeight.bold,
                fontFamily: 'FontMain',
                color: Colors.white),
            headlineMedium: TextStyle(fontSize: 10,
                fontWeight: FontWeight.w100,
                fontStyle: FontStyle.italic,
                color: Colors.white),
          )
      ),
      home: SplashScreen(),
    );
  }
}
class MyHomePage extends StatefulWidget{
  var nameFromHome;
MyHomePage(this.nameFromHome);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var no1Controller = TextEditingController();

  var no2Controller = TextEditingController();

  var result = '';

  var kgController = TextEditingController();

  var feController = TextEditingController();

  var inController = TextEditingController();

  var nameController = TextEditingController();

  var result_bmi = "";

  var bgColor = Colors.blue.shade200;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('My app',style: TextStyle(color: Colors.white),),
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
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 28.0),
                  child: Text('Body Mass Index. ',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 29,),),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 28.0),
                  child: Text('BMI',style: TextStyle(fontSize: 38,fontWeight: FontWeight.bold),),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Form(
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                    TextFormField(
                      keyboardType: TextInputType.number,
                      controller: feController,
                      decoration: InputDecoration(
                        hintText: 'Enter your height(in feet) :',
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(11),
                            borderSide: BorderSide(
                              color: Colors.blue,
                            )
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(11),
                            borderSide: BorderSide(
                              color: Colors.blueGrey,
                            )
                        ),
                        disabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(11),
                            borderSide: BorderSide(
                              color: Colors.black,
                            )
                        ),
                      ),
                    ),
                      SizedBox(height: 16,),
                    TextFormField(
                        keyboardType: TextInputType.number,
                        controller: kgController,
                        decoration: InputDecoration(
                          hintText: 'Enter your weight(in kg) :',
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(11),
                              borderSide: BorderSide(
                                color: Colors.blue,
                              )
                          ),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(11),
                              borderSide: BorderSide(
                                color: Colors.blueGrey,
                              )
                          ),
                          disabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(11),
                              borderSide: BorderSide(
                                color: Colors.black,
                              )
                          ),
                        )
                    ),SizedBox(height: 16,),
                    TextField(
                      keyboardType: TextInputType.number,
                      controller: inController,
                      decoration: InputDecoration(
                        hintText: 'Enter your height in inches',
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(11),
                            borderSide: BorderSide(
                              color: Colors.blue,
                            )
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(11),
                            borderSide: BorderSide(
                              color: Colors.blueGrey,
                            )
                        ),
                        disabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(11),
                            borderSide: BorderSide(
                              color: Colors.black,
                            ),
                      ),
                    ),
                                  ),
                    SizedBox(height: 16,),
                    ElevatedButton(onPressed: (){
                      var ft = feController.text.toString();
                      var wt = kgController.text.toString();
                      var Ic = inController.text.toString();
                      if(wt!=""&& ft!=""&& Ic!=""){

                        var ift = int.parse(ft);

                        var iwt = int.parse(wt);

                        var iIc = int.parse(Ic);

                        var tIc = (ift*12) + iIc;

                        var tCm = tIc*2.54;

                        var tM = tCm/100;

                        var bmi = iwt/(tM*tM);

                        var msg = '';

                        if(bmi<18){
                          msg = "You're under weight";
                          bgColor = Colors.deepOrange.shade200;
                        }
                        else if(bmi > 25){
                          msg = "You're over weight";
                          bgColor = Colors.yellow.shade200;
                        }
                        else{
                          msg = "You're healthy";
                          bgColor = Colors.green.shade200;
                        }
                        setState(() {
                          result_bmi = "$msg Your bmi is ${bmi.toStringAsFixed(4)}";
                        });
                      }else{
                        setState(() {
                          result_bmi = 'Please fill all the required blanks';
                        });
                      }
                    }, child: Text('Calaculate')
                        ),
                    SizedBox(height: 16,),
                    Text(result_bmi,style: TextStyle(fontSize: 15,),),
                          ]
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(50.0),
                  child: Text('Click here to open calculator.',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 20,),),
                ),
                ElevatedButton(onPressed: (){
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => CalculatorPg(),));
                }, child: Padding(
                  padding: const EdgeInsets.all(11.0),
                  child: Text('Open calculator',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 20,)),
                )),
              ],
            ),
          ),
        ),
      )
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('nameFromHome', widget.nameFromHome));
  }
}
