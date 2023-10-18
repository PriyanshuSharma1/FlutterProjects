import "package:flutter/material.dart"; // to implement material design
import 'package:flutter_svg/flutter_svg.dart';
import 'package:my_app/pages/HomeScreen.dart';

void main() {
  runApp(const MyApp()); // attaching the given widget (root) onto the screen
}

// stateless -> not mutable. Widget appearance doesn't change with respect to the internal state
class MyApp extends StatelessWidget {
  const MyApp({super.key}); // constructor of the class MyApp
  @override

  //build -> method of Flutter that returns a widget and takes a parameter of Build Context named context
  //Build Context -> holds the location of widget in the widget tree. Used to obtain "Theme", "Navigator"

  Widget build(BuildContext context) {
    //body of build method. returns new instance of MaterialApp widget
    return const MaterialApp(
      title: "KUCC student",
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    ); //widget that sets up the material design for the app
  }
}

//Stateful -> mutable
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});
  @override

  // A separate class associated with a widget that manages the mutable state of the widget.
  // When the state of a widget needs to change and trigger a rebuild of the UI, a new instance of the state class is created or updated
  State<MyHomePage> createState() => _MyHomePageState();
}

//Defining the method
class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                height: 100,
                width: 100,
                child: SvgPicture.asset("assets/images/kucc_logo.svg"),
              ),
              const SizedBox(height: 40.0),
              TextFormField(
                decoration: const InputDecoration(
                  hintText: 'Enter your username',
                  labelText: 'Username',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 20.0),
              TextFormField(
                obscureText: true,
                decoration: const InputDecoration(
                  hintText: 'Enter your password',
                  labelText: 'Password',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 20.0),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.amber,
                ),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HomeScreen()));
                },
                child: const Text('Login'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
