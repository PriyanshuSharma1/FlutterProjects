import "package:flutter/material.dart";
import "package:my_app/main.dart";

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  @override
  State<HomeScreen> createState() => _HomeScreenSate();
}

class _HomeScreenSate extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        backgroundColor: Colors.amberAccent,
        leading: FloatingActionButton(
          tooltip: "Navigation menu",
          onPressed: null,
          child: Container(
            height: 300.0,
            width: 300.0,
            decoration: const BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                    image: AssetImage("assets/images/profile.jpeg"),
                    fit: BoxFit.cover)),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => MyHomePage()));
            },
            icon: Icon(Icons.logout_outlined),
            tooltip: "search",
          )
        ],
      ),
      body: const Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(children: [
                IconButton(
                  onPressed: null,
                  icon: Icon(Icons.notification_add_rounded),
                  tooltip: "events",
                ),
                Text("Events")
              ]),
              Row(children: [
                IconButton(
                  onPressed: null,
                  icon: Icon(Icons.home_filled),
                  tooltip: "home",
                ),
                Text("Home")
              ]),
              Row(children: [
                IconButton(
                  onPressed: null,
                  icon: Icon(Icons.payment_rounded),
                  tooltip: "payments",
                ),
                Text("Payments")
              ]),
            ],
          ),
          
        ],
      )),
    );
  }
}
