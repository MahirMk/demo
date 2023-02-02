import 'dart:async';

import 'package:flutter/material.dart';

class StreamBuilderExample extends StatefulWidget {

  @override
  State<StreamBuilderExample> createState() => _StreamBuilderExampleState();
}

class _StreamBuilderExampleState extends State<StreamBuilderExample> {

  final StreamController _streamController = StreamController();

  addData() async {
    for(int i = 1;i <=10; i++){
     await  Future.delayed(const Duration(seconds: 1));
     _streamController.sink.add(i);
    }
  }

  Stream<int> numberStream() async* {
    for(int i = 1;i <= 200000; i++){
      await  Future.delayed(const Duration(seconds: 1));
      yield i;
      print(i);
    }
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    dispose();
    _streamController.close();
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    addData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Stream Builder"),
      ),
      body: Column(
        children: [
          Center(
            child: StreamBuilder(
              //stream: _streamController.stream, //add();
              //stream: numberStream().where((number) => number % 2 == 0),
              stream: numberStream().map((number)=>"$number"),
              builder: (context, snapshot)
              {
                if(snapshot.hasError) 
                  return Text("error");
                else if(snapshot.connectionState ==  ConnectionState.waiting)
                  return CircularProgressIndicator();
                return Column(
                  children: [
                    Text("${snapshot.data}",style: const TextStyle(fontSize: 30),),
                  ],
                );
              },
            ),
          ),
          ElevatedButton(onPressed: (){
            addData();
          }, child: const Text("Count"))
        ],
      ),
    );
  }
}
