import "package:flutter/material.dart";

void main(){
  runApp(Test_notifi());
}

class Test_notifi extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              color: Colors.amber,
              child: ListTile(
                leading: Icon(Icons.notifications),
                title: Text("Employee added Successfully.!"),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              color: Colors.amber,
              child: ListTile(
                leading: Icon(Icons.notifications),
                title: Text("Employee added Successfully.!"),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
            ),
          )
        ],
      ),
    );
  }
}