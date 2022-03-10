import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var num1 = 0, num2 = 0, sum = 0;

  final TextEditingController t1 = new TextEditingController(text: "0");
  final TextEditingController t2 = new TextEditingController(text: "0");
  void doAdd() {
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

  void doDiv() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = (num1 ~/ num2);
    });
  }

  void doClear() {
    setState(() {
      t1.text = "0";
      t2.text = "0";
      sum = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calculator"),
      ),
      body: Container(
          padding: EdgeInsets.all(40.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Output: $sum",
                style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.blue[800],
                    fontWeight: FontWeight.bold),
              ),
              TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(hintText: "Enter first number"),
                controller: t1,
              ),
              TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(hintText: "Enter second number"),
                controller: t2,
              ),
              Padding(padding: EdgeInsets.only(top: 20.0)),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  MaterialButton(
                    child: Text("+"),
                    onPressed: () => {doAdd()},
                    color: Color.fromARGB(255, 65, 209, 195),
                  ),
                  MaterialButton(
                    child: Text("-"),
                    onPressed: () => {doSub()},
                    color: Color.fromARGB(255, 65, 209, 195),
                  ),
                  MaterialButton(
                    child: Text("*"),
                    onPressed: () => {doMul()},
                    color: Color.fromARGB(255, 65, 209, 195),
                  ),
                  MaterialButton(
                    child: Text("/"),
                    onPressed: () => {doDiv()},
                    color: Color.fromARGB(255, 65, 209, 195),
                  ),
                ],
              ),
              Padding(padding: EdgeInsets.only(top: 20.0)),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  MaterialButton(
                      child: Text("Clear"),
                      color: Color.fromARGB(255, 65, 209, 195),
                      onPressed: () => {doClear()})
                ],
              )
            ],
          )),
    );
  }
}
