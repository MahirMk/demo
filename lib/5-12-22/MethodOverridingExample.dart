import 'package:flutter/material.dart';

class MethodOverridingExample extends StatefulWidget {
  const MethodOverridingExample({Key? key}) : super(key: key);

  @override
  State<MethodOverridingExample> createState() =>
      _MethodOverridingExampleState();
}

class _MethodOverridingExampleState extends State<MethodOverridingExample> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    var apple = Apple();
    apple.name();
    print("Apple:${apple.color}");
  }


  // @override
  // void initState() {
  //   // TODO: implement initState
  //   super.initState();
  //
  //   var obj1 = C();
  //   obj1.display();
  //
  //   var obj2 = B();
  //   obj2.display();
  // }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Method Overriding Example"),
      ),
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () {},
            child: const Text("Click"),
          ),
        ],
      ),
    );
  }
}
// class A {
//   @override
//   display() {
//     print("Class A");
//   }
// }
// class B extends A {
//   @override
//   display() {
//     super.display();
//     print("Class B");
//   }
// }
// class C extends A {
//   @override
//   display() {
//     print("Class C");
//   }
// }

class Fruits {

   String? color = "green";

   size() {
    print("color is red");
  }
}

class Apple extends Fruits {

 // String? color = "black";

    name() {
      super.size();
      print("color is blue");
    }


}


