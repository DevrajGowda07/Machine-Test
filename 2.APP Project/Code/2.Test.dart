import "package:flutter/material.dart";
import 'package:my_project/Test_detail.dart';
import 'package:my_project/Test_notifi.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp ({Key?key}) : super(key: key);
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Machine_test(),
    );
  }
}

class Machine_test extends StatefulWidget{
  @override
  State<Machine_test>  createState() => _Machine();
}

class _Machine extends State<Machine_test>{
  int index = 0;
  final display = [
    Center(child: Text("Welcome to Admin Portal",
    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30))),
    Test_detail(),
    Test_notifi()
  ];
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: const Text("MachineTest",
          style: TextStyle(
            fontWeight: FontWeight.bold
          ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: const Icon(Icons.online_prediction_rounded),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: const Icon(Icons.badge),
            ),
            PopupMenuButton(itemBuilder: (BuildContext context){
              return[
                PopupMenuItem(child:  Text("Group By"), value: "GroupBy"),
                PopupMenuItem(child: Text("New broadcast"), value: "New boardcast"),
                PopupMenuItem(child: Text("Payments") ,value: "Payments"),
                PopupMenuItem(child: Text("My order") ,value: "My order"),
              ];
            })
          ],
        ),
        drawer: Drawer(
          backgroundColor: Colors.blue,
          child: ListView(
            children: const[
              DrawerHeader(child: Text("SignIn",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30
              ),
              ),
              decoration: BoxDecoration(color: Color.fromARGB(255, 136, 193, 219)),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Card(child: ListTile(leading: Icon(Icons.whatsapp, color: Color.fromARGB(255, 4, 119, 8)), title: Text("Whatsapp"), trailing: Icon(Icons.arrow_forward)), color: Color.fromARGB(255, 115, 174, 222)),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Card(child: ListTile(leading: Icon(Icons.badge_rounded, color: Color.fromARGB(255, 1, 41, 73)), title: Text("My Order"), trailing: Icon(Icons.arrow_forward)), color: Color.fromARGB(255, 115, 174, 222)),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Card(child: ListTile(leading: Icon(Icons.settings, color: Color.fromARGB(255, 1, 41, 73)), title: Text("Settings"), trailing: Icon(Icons.arrow_forward)), color: Color.fromARGB(255, 115, 174, 222)),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Card(child: ListTile(leading: Icon(Icons.help, color: Color.fromARGB(255, 1, 41, 73)), title: Text("Help"), trailing: Icon(Icons.arrow_forward)), color: Color.fromARGB(255, 115, 174, 222)),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Card(child: ListTile(leading: Icon(Icons.exit_to_app, color: Colors.red), title: Text("Logout"), trailing: Icon(Icons.arrow_forward)), color: Color.fromARGB(255, 115, 174, 222)),
              )
            ],
          ),
        ),
        body: display[index],

        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.red,
          unselectedItemColor: Colors.black,
          type: BottomNavigationBarType.fixed,
          currentIndex: index,
          onTap: (selected){
            setState(() {
              index =  selected;
            });
          },
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.grid_view), label: "Dashboard"),
            BottomNavigationBarItem(icon: Icon(Icons.details), label: "Details"),
            BottomNavigationBarItem(icon: Icon(Icons.notifications), label: "Notification")
          ],
        ),
      ),
    );
  }
}