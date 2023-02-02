import 'package:flutter/material.dart';

class VariablePage extends StatefulWidget {
  const VariablePage({Key? key}) : super(key: key);

  @override
  State<VariablePage> createState() => _VariablePageState();
}

class _VariablePageState extends State<VariablePage> {


  var a = 10;
  dynamic b;

  final int p1 = 10;
  static int p3 = 10;
  int p2 = 20;


  int? name;
  double? name1;
  bool? name2;
  String? name3;
  List<int>? myList;
  Map<String, dynamic> fruits = Map();


  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    a = 20;
    b = "12220";

    name = 9;
    name1 = 12.12;
    name2 = true;
    name3 = "name";
    myList = [55,23,34,334,34];
    fruits["apple"] = 800;
    fruits["banana"] = "yellow";
    fruits["guava"] = true;

    // p1=22;  final
    p2 = 25;

    p3 = 30;
    print(p3);
    print(b);

    print(name);
    print(name1);
    print(name2);
    print(name3);
    print(myList);
    print(myList![1]);

    print(fruits["apple"]);

    print(Fruits.values);
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text("Variables"),
      ),
    );
  }
}
enum Fruits {
  Apple, Banana, Grapes
}



