import "package:flutter/material.dart";

void main(){
  runApp(Test_detail());
}

class Test_detail extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Center(child: Text('Employee Details',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold
            ),
            )),
          ),
          Padding(
            padding: EdgeInsets.all(14.0),
            child: TextField(
              decoration: InputDecoration(
                labelText: "Name",
                labelStyle: TextStyle(color: Colors.black),
                prefixIcon: Icon(Icons.person, color: Colors.black),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(14.0),
            child: TextField(
              decoration: InputDecoration(
                labelText: "Email",
                labelStyle: TextStyle(color: Colors.black),
                prefixIcon: Icon(Icons.email, color: Colors.black),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(14.0),
            child: TextField(
              decoration: InputDecoration(
                labelText: "Mobile no",
                labelStyle: TextStyle(color: Colors.black),
                prefixIcon: Icon(Icons.phone, color: Colors.black),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(14.0),
            child: TextField(
              decoration: InputDecoration(
                labelText: "Designation",
                labelStyle: TextStyle(color: Colors.black),
                prefixIcon: Icon(Icons.description_outlined, color: Colors.black),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(14.0),
            child: TextField(
              decoration: InputDecoration(
                labelText: "Gender",
                labelStyle: TextStyle(color: Colors.black),
                prefixIcon: Icon(Icons.people, color: Colors.black),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(14.0),
            child: TextField(
              decoration: InputDecoration(
                labelText: "Course",
                labelStyle: TextStyle(color: Colors.black),
                prefixIcon: Icon(Icons.book_sharp, color: Colors.black),
              ),
            ),
          ),
          SizedBox(
            width: 200,
            height: 50,
            child: ElevatedButton(
              child: Text("Add Employee"),
              onPressed: (){},
            ),
          )
        ],
        ),
      ),
    );
  }
}