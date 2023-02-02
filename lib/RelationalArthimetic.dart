import 'package:flutter/material.dart';

class RelationalArthimetic extends StatefulWidget {
  const RelationalArthimetic({Key? key}) : super(key: key);

  @override
  State<RelationalArthimetic> createState() => _RelationalArthimeticState();
}

class _RelationalArthimeticState extends State<RelationalArthimetic> {

  int? a;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    a=2;
    print(a == 6);
    print(a != 6);
    print(a! < 6);
    print(a! > 6);
    print(a! >= 6);
    print(a! <= 6);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Relational Arthimetic"),
      ),
    );
  }
}
