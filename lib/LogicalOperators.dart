import 'package:flutter/material.dart';

class LogicalOperators extends StatefulWidget {
  const LogicalOperators({Key? key}) : super(key: key);

  @override
  State<LogicalOperators> createState() => _LogicalOperatorsState();
}

class _LogicalOperatorsState extends State<LogicalOperators> {

  int? num1;
  int? num2;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    num1 = 10;
    num2 = 5;

    print(num1! < num2! || num1! < 20);
    print(num1! > num2! && num1! < 20);
    print(!(num1! > num2!));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("LogicalOperators"),
      ),
    );
  }
}
