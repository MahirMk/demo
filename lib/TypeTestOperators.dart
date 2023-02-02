
import 'package:flutter/material.dart';

class TypeTestOperators extends StatefulWidget {
  const TypeTestOperators({Key? key}) : super(key: key);

  @override
  State<TypeTestOperators> createState() => _TypeTestOperatorsState();
}

class _TypeTestOperatorsState extends State<TypeTestOperators> {

  int? a;
  String? b;



  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    a = 10;
    b = "10";
    print("${a is int}");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("TypeTestOperators"),
      ),
    );
  }
}
