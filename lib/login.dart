// import 'package:flutter/material.dart';
// import 'package:flutter/rendering.dart';
// import 'package:flutter_bases/ui_helper/util.dart';
//
// void main() {
//   runApp(const MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       debugShowCheckedModeBanner: false,
//       theme: ThemeData(
//           colorScheme: ColorScheme.fromSeed(seedColor: Colors.red),
//           textTheme: TextTheme(
//             headlineLarge :TextStyle(fontSize: 20,fontWeight: FontWeight.bold,fontFamily: 'FontMain'),
//             headlineMedium: TextStyle(fontSize: 10,fontWeight: FontWeight.w100,fontStyle: FontStyle.italic),
//
//           )
//       ),
//       home: const MyHomePage(title: 'My First App!'),
//     );
//   }
// }
//
// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key, required this.title});
//
//
//
//   final String title;
//
//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//
//   var emailText = TextEditingController();
//   var passText = TextEditingController();
//
//
//   @override
//   Widget build(BuildContext context) {
//
//     return Scaffold(
//         appBar: AppBar(
//
//           backgroundColor: Theme
//               .of(context)
//               .colorScheme
//               .inversePrimary,
//
//           title: Text(widget.title),
//         ),
//         body: Center(
//           child: Container(
//               width: 300,
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   TextField(
//                     controller: emailText,
//                     decoration: InputDecoration(
//                         hintText: 'Enter Email',
//                         focusedBorder: OutlineInputBorder(
//                             borderRadius: BorderRadius.circular(11),
//                             borderSide: BorderSide(
//                               color: Colors.red,
//                             )
//                         ),
//                         enabledBorder: OutlineInputBorder(
//                             borderRadius: BorderRadius.circular(11),
//                             borderSide: BorderSide(
//                               color: Colors.grey,
//                             )
//                         ),
//                         disabledBorder: OutlineInputBorder(
//                             borderRadius: BorderRadius.circular(11),
//                             borderSide: BorderSide(
//                               color: Colors.black,
//                             )
//                         ),
//                         suffixText: "@gmail.com",
//                         prefixIcon: Icon(Icons.email)
//                     ),
//                   ),
//                   Container(height: 11,),
//                   TextField(
//                     keyboardType: TextInputType.number,
//                     controller: passText,
//                     obscureText: true,
//                     decoration: InputDecoration(
//                       hintText: 'Enter Password',
//                       focusedBorder: OutlineInputBorder(
//                           borderRadius: BorderRadius.circular(11),
//                           borderSide: BorderSide(
//                             color: Colors.red,
//                           )
//                       ),
//                       enabledBorder: OutlineInputBorder(
//                           borderRadius: BorderRadius.circular(11),
//                           borderSide: BorderSide(
//                             color: Colors.grey,
//                           )
//                       ),
//                       disabledBorder: OutlineInputBorder(
//                           borderRadius: BorderRadius.circular(11),
//                           borderSide: BorderSide(
//                             color: Colors.black,
//                           )
//                       ),
//
//                       suffixIcon: IconButton(
//                         icon: Icon(Icons.remove_red_eye), onPressed: () {
//
//                       },
//                       ),
//                     ),
//                   ),
//                   ElevatedButton(onPressed: (){
//                     String uEmail = emailText.text.toString();
//                     String uPass = passText.text;
//
//                     print('Email : $uEmail,Pass : $uPass');
//
//                   }
//                       , child: Text('Login')
//                   )

//
//                 ],
//               )
//           ),
//         )
//
//
//     );
//   }
// }