import 'package:flutter/material.dart';

class FunctionsDemo extends StatefulWidget {
  const FunctionsDemo({Key? key}) : super(key: key);

  @override
  State<FunctionsDemo> createState() => _FunctionsDemoState();
}

class _FunctionsDemoState extends State<FunctionsDemo> {

  int c = 10;

  add3()
  {
    int c = 50;
    print("add3 $c");
    print("global ${this.c}");
  }

  add2(int a, int b)
  {
    int perimeter = 4 *(a * b);
    print("add2 $perimeter");

    // int c = 20;
    // print("$c");
  }

  add1(int length, int breadth)
  {
    // int length = 4;
    // int breadth = 2;

    int perimeter = 2 *(length + breadth);
    print("add1 $perimeter");
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Functions"),
      ),
      body: Column(
        children: [
          Center(
            child: Text(
              writeLogo(),
              textDirection: TextDirection.ltr,
              style: const TextStyle(color: Colors.blue,fontSize: 30),
            ),
          ),
          ElevatedButton(
            onPressed: (){
              add1(2,4);
              add2(2,4);
              add3();
            },
              child: Text("Add"),
          ),
        ],
      ),
    );
  }
  String writeLogo(){
    return "M A H I R";
  }
}

