// import 'package:flutter/material.dart';
// import 'package:flutter/rendering.dart';
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
//         colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
//       ),
//       home: const MyHomePage(title: 'My First App!'),
//     );
//   }
// }
//
// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key, required this.title});
//
//   // This widget is the home page of your application. It is stateful, meaning
//   // that it has a State object (defined below) that contains fields that affect
//   // how it looks.
//
//   // This class is the configuration for the state. It holds the values (in this
//   // case the title) provided by the parent (in this case the App widget) and
//   // used by the build method of the State. Fields in a Widget subclass are
//   // always marked "final".
//
//   final String title;
//
//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//   int _counter = 0;
//
//
//
//   @override
//   Widget build(BuildContext context) {
//     var arrName = ['Ayyan','Amman', 'Kashan', 'Saad','Faiz','Tayyab','Ahmad','Mustafa','Shahzaib','Fahad','Mussa'];
//     return Scaffold(
//         appBar: AppBar(
//
//           backgroundColor: Theme.of(context).colorScheme.inversePrimary,
//
//           title: Text(widget.title),
//         ),
//         body: ListView.separated(itemBuilder: (context, index) {
//           return ListTile(
//             leading: Text('$index'),
//             title: Text(arrName[index],style: TextStyle(fontFamily: 'FontMain'),),
//             subtitle: Text('Number'),
//             trailing: Icon(Icons.call),
//           );
//         },
//             itemCount: arrName.length,
//             separatorBuilder:(context, index) {
//               return Divider(height: 20,thickness: 4,);
//             }
//         )
//
//









//     );
//
//   }
// }


/// // CircleAvatar(
// // // backgroundImage: AssetImage('assets/images/boy.png'),
// // backgroundColor: Colors.green,
// // ),