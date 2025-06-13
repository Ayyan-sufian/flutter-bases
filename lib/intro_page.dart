import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bases/calculator.dart';
import 'package:flutter_bases/main.dart';
import 'package:flutter_bases/splash_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class IntroPage extends StatefulWidget{
  const IntroPage({super.key});

  @override
  State<IntroPage> createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  bool _obsecureText = true;
  var nameController = TextEditingController();

  var emailText = TextEditingController();

  var passText = TextEditingController();

  var result_login = "";

  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       title: Text('Intro Page',style: TextStyle(color: Colors.white),),
    backgroundColor: Colors.blueGrey,
    centerTitle: true,
     ),
     body: Container(
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
               Text('Hello world! This is my first app. ', style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500,color: Colors.blueGrey),),
               Padding(
                 padding: const EdgeInsets.symmetric(vertical: 60),//all(60.0),
                 child: Text('Login',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.blueGrey),),
               ),
               Form(
                   child: Padding(
                     padding: const EdgeInsets.symmetric(horizontal:  16.0),
                     child: Column(
                       mainAxisAlignment: MainAxisAlignment.center,
                       crossAxisAlignment: CrossAxisAlignment.center,
                       children: [
                         TextField(
                           controller: emailText,
                           decoration: InputDecoration(
                               hintText: 'Enter Email',
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
                               suffixText: "@gmail.com",
                               prefixIcon: Icon(Icons.email)
                           ),
                         ),
                         SizedBox(height: 16,),
                         TextField(
                           keyboardType: TextInputType.text,
                           controller: passText,
                           obscureText: _obsecureText,
                           decoration: InputDecoration(
                             hintText: 'Enter Password',
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

                             suffixIcon: IconButton(
                               icon: Icon(
                                   _obsecureText ? Icons.visibility_off : Icons.visibility),
                               onPressed: () {
                                 setState(() {
                                   _obsecureText = !_obsecureText;
                                 });
                             },
                             ),
                           ),
                         ),
                         SizedBox(height: 16,),
                         MaterialButton(onPressed: () async {
                           var ue = emailText.text.toString();
                           var up = passText.text.toString();

                           var sharedPref = await SharedPreferences.getInstance();
                           sharedPref.setBool(SplashScreenState.KEYLOGIN, true);

                           if(ue!=""&&up!=""){
                             setState(() {Navigator.pushReplacement(context,
                                 MaterialPageRoute(builder: (context) => MyHomePage(nameController.text.toString()),));
                             });
                           }else{
                             setState(() {
                               result_login = 'Please fill the required blanks';
                             });
                           }

                         }, child: Text('Login'),
                           minWidth: double.infinity,
                           color: Colors.blueGrey,
                           textColor: Colors.white,
                           height: 40,
                         ),
                         Text(result_login,style: TextStyle(fontSize: 18),),

                         SizedBox(height: 16,),

                         MaterialButton(onPressed: (){
                           Navigator.pushReplacement(
                               context,
                               MaterialPageRoute(
                                 builder: (context) => MyHomePage(nameController.text.toString()),));
                         },
                           child: Text('Open without Login'),
                           minWidth: double.infinity,
                           color: Colors.blueGrey,
                           textColor: Colors.white,
                           height: 40,
                         ),
                       ],
                     ),
                   )
               ),



             ],
           ),
         ),
       ),
     ),
   );

  }
}