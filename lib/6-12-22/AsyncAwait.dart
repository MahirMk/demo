import 'package:flutter/material.dart';
import 'dart:math';

import '../widgets.dart';

class AsyncAwait extends StatefulWidget {
  const AsyncAwait({Key? key}) : super(key: key);

  @override
  State<AsyncAwait> createState() => _AsyncAwaitState();
}

class _AsyncAwaitState extends State<AsyncAwait> {

  Stream<double> getRandomValues() async* {
    var random = Random(-1);
    while (true) {
      await Future.delayed(const Duration(seconds: 1));
      yield random.nextDouble();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Async"),
      ),
      body: Column(
        children: [
          ElevatedButton(
            onPressed: (){
              print(" Main Program: Starts");
              printFileContent();
              print(" Main Program: Ends");
            },
            child: const Text("File Button"),
          ),
          ElevatedButton(
            onPressed: (){
              getRandomValues().listen((value) {
                print('1st: $value');
              });
            },
            child: const Text("Stream"),
          )
        ],
      ),
    );
  }
}
