import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  var value = false;
  var myName = "Alberto";

  bool value1 = true;
  String myName1 = "Alberto";

  dynamic value2 = 18;
  dynamic myName2 = "Alberto";


  final name = "Alberto";
  final bool nickName = true;

  final name1 = "Alberto";

  var s = "Double quoted";
  var t = 'Single quoted';

  var age = 25;
  var myAge = "I am years old";

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    value1 = false;
    print(value1);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Demo"),
      ),
      body: Column(
        children: const [
          Text("Home"),
        ],
      ),
    );
  }
}
