import 'package:flutter/material.dart';
void main() => runApp(MyApp());

class MyApp extends StatefulWidget{
  @override
  myAppState createState() => myAppState();
}

class myAppState extends State<MyApp>{

  final value1 = TextEditingController();
  final value2 = TextEditingController();
  int sum =0;
  int multi = 0;

  addThemUp(){
    int val1 = int.parse(value1.text);
    int val2 = int.parse(value2.text);
    sum = val1+val2;
  }
  multiply() {
    multi = int.parse(value1.text)*int.parse(value2.text);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("To Calculate addition and multiplicaiton"),
          foregroundColor: Colors.green,
          backgroundColor: Colors.white
          ,
        ),
        body: Column(
          children: [
            TextField(
              controller: value1,
              decoration: InputDecoration(
                label: Text("First Value"),
              ),
            ),
            TextField(
              controller: value2,
              decoration: InputDecoration(
                label: Text("Second Value")
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  addThemUp();
                  setState() {}
    },
                child: Text("Add them up"),
                ),
            ElevatedButton(
              onPressed: () {
                multiply();
                setState() {}
              },
              child: Text("Add them up"),
            ),

            Text("After Addition : $sum"),
            Text("After Multiplication : $multiply"),
          ],
        ),
      ),
    );
    throw UnimplementedError();
  }

}