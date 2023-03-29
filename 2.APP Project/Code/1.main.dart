import "package:flutter/material.dart";
import 'package:my_project/Test.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({Key?key}) : super (key: key);
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Test(),
    );
  }
}

class Test extends StatefulWidget{
  @override
  State<Test> createState() => _Test();
}

class _Test extends State<Test>{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(child: const Text("Login",
              style: TextStyle(
                color: Colors.red,
                fontSize: 30,
                fontWeight: FontWeight.bold
              ),
              )),
            ),
            Padding(
              padding: const EdgeInsets.all(14.0),
              child: TextField(
                decoration:  InputDecoration(
                  contentPadding: const EdgeInsets.symmetric(vertical: 15.0),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15.0),
                    borderSide: const BorderSide(width: 0.8)
                  ),
                  prefixIcon: const Icon(Icons.email, color: Colors.black),
                  hintText: "Enter mail-ID"
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(14.0),
              child: TextField(
                decoration:  InputDecoration(
                  contentPadding: const EdgeInsets.symmetric(vertical: 15.0),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15.0),
                    borderSide: const BorderSide(width: 0.8)
                  ),
                  prefixIcon: const Icon(Icons.remove_red_eye, color: Colors.black),
                  hintText: "Password"
                ),
              ),
            ),
            SizedBox(
              height: 50,
              width: 200,
              child: ElevatedButton(
                child: const Text("Login", style: TextStyle(fontSize: 20)),
                onPressed: (){
                  Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context)=> Machine_test()));
                },
                ),
            )
          ],
        ),
      ),
    );
  }
}