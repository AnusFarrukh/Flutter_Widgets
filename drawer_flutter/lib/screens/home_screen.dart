import 'package:drawer_flutter/screens/first_screen.dart';
import 'package:drawer_flutter/screens/second_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //body color
      backgroundColor:const  Color.fromARGB(255, 60, 108, 147),
      appBar: AppBar(
        backgroundColor:const Color.fromARGB(255, 24, 93, 149),
        title: const Text("AppBar"),
      ),
      drawer: Drawer(
        child: Container(
          color:const Color.fromARGB(255, 39, 115, 178),
          child: ListView(
            children: [
              const DrawerHeader(
                  child: Center(
                child: Text(
                  "DRAWER",
                  style: TextStyle(fontSize: 30),
                ),
              )),
              ListTile(
                onTap: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => const FirstScreen()));
                },
                leading:const  Icon(Icons.home),
                title:const Text("First Screen"),
              ),
              ListTile(
                onTap: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) =>const SecondScreen()));
                },
                leading:const Icon(Icons.home),
                title: const Text("Second Screen"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
