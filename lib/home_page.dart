import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class HomePage extends StatefulWidget{
  @override
  State createState() => new HomePageState();
}

class HomePageState extends State<HomePage>{
  var num1=0, num2=0, sum=0;

  final TextEditingController t1 = new TextEditingController(text: '0');
  final TextEditingController t2 = new TextEditingController(text: '0');
  void doAddition(){
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 + num2;
    });
  }
  void doSub() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 - num2;
    });
  }
  void doMul() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 * num2;
    });
  }
  void dodivision() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 ~/ num2;
    });
  }
  void doClear(){
    setState(() {
      t1.text = "0";
      t2.text = "0";
    });
  }
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("Calculator"),
        centerTitle: true,
      ),
      body: Container(
        padding: const EdgeInsets.all(40.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
               "OUTPUT: $sum",
               style: const TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                color: Colors.purple,
                ),
               ),
            TextField(
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                hintText: "Enter Number 1"
              ),
              controller: t1,
            ),
            TextField(
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                hintText: "Enter Number 2"
              ),
              controller: t2,
            ),
            const Padding(
              padding: EdgeInsets.only(top: 20.0),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                MaterialButton(
                  color: Colors.greenAccent,
                  onPressed: () => doAddition(),
                  child: const Text("+"), 
                ),
                MaterialButton(
                  color: Colors.greenAccent,
                  onPressed: () => doSub(),
                  child: const Text("-"),
                ),
              ]
            ),
            const Padding(padding: EdgeInsets.only(bottom: 20.0)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly, 
              children: [
                MaterialButton(
                  color: Colors.greenAccent,
                  onPressed: () => doMul(),
                  child: const Text("*"),
                ),
                MaterialButton(
                  color: Colors.greenAccent,
                  onPressed: () => dodivision(),
                  child: const Text("/"),
                ),
              ]
            ),
            Padding(padding: EdgeInsets.only(top: 20.0)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MaterialButton(
                  child: Text("Clear"),
                  color: Colors.greenAccent,
                  onPressed: () => doClear(),
                )
              ],
            )
          ],
        )
      )
    );
  }
}