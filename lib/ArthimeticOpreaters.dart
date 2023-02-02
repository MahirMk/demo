import 'package:flutter/material.dart';

class ArthimeticOpreaters extends StatefulWidget {
  const ArthimeticOpreaters({Key? key}) : super(key: key);

  @override
  State<ArthimeticOpreaters> createState() => _ArthimeticOpreatersState();
}

class _ArthimeticOpreatersState extends State<ArthimeticOpreaters> {

  var a = 10;
  var b = 15;
  var c = 20;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    var add = a + b;
     print("$add");

    var sub = a - b;
    print("$sub");

    var multiply = a * b;
    print("$multiply");

    var division = a / b;
    print("$division");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Arthimetic Page"),
      ),
    );
  }
}
