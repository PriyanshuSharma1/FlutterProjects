// import "package:flutter/material.dart"; // to implement material design

// void main() {
//   runApp(const MyApp()); // attaching the given widget (root) onto the screen
// }

// // stateless -> not mutable. Widget appearance doesn't change with respect to the internal state
// class MyApp extends StatelessWidget {
//   const MyApp({super.key}); // constructor of the class MyApp
//   @override

//   //build -> method of Flutter that returns a widget and takes a parameter of Build Context named context
//   //Build Context -> holds the location of widget in the widget tree. Used to obtain "Theme", "Navigator"

//   Widget build(BuildContext context) {
//     //body of build method. returns new instance of MaterialApp widget
//     return const MaterialApp(
//       title: "Love Story",
//       debugShowCheckedModeBanner: false,
//       home: MyHomePage(),
//     ); //widget that sets up the material design for the app
//   }
// }

// //Stateful -> mutable
// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key});
//   @override

//   // A separate class associated with a widget that manages the mutable state of the widget.
//   // When the state of a widget needs to change and trigger a rebuild of the UI, a new instance of the state class is created or updated
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// //Defining the method
// class _MyHomePageState extends State<MyHomePage> {
//   var _arr = ["Priyanshu", "Manish"];
//   int _counter = 0;
//   void _incrementCounter() {
//     setState(() {
//       _counter++;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//           child: Column(
//         children: [
//           Text(
//             "I Love You ${_arr[_counter]}",
//             style: Theme.of(context).textTheme.headlineMedium,
//           ),
//           FloatingActionButton(
//             onPressed: _incrementCounter,
//             tooltip: 'Increment',
//             child: const Icon(
//               Icons.favorite,
//               color: Colors.pink,
//               size: 24.0,
//             ),
//           )
//         ],
//       )),
//     );
//   }
// }
