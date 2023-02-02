import 'package:flutter/material.dart';

class ExpadedWidget extends StatefulWidget {
  const ExpadedWidget({Key? key}) : super(key: key);

  @override
  State<ExpadedWidget> createState() => _ExpadedWidgetState();
}

class _ExpadedWidgetState extends State<ExpadedWidget> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
     // appBar: AppBar(title:  Text("Expanded"),),
      body: Column(
        children: [
          Expanded(
            flex: 3,
            child: Container(
                height: MediaQuery.of(context).size.height * 0.30,
                width: MediaQuery.of(context).size.width,
                alignment: Alignment.center,
                color: Colors.teal,
              ),
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.40,
            width: MediaQuery.of(context).size.width,
            alignment: Alignment.center,
            color: Colors.blue,
          ),
          Expanded(
            flex: 7,
            child: Container(
              height: MediaQuery.of(context).size.height * 0.70,
              width: MediaQuery.of(context).size.width,
              alignment: Alignment.center,
              color: Colors.red,
            ),
          ),
          // Expanded(
          //   flex: 2,
          //   child: Container(
          //     width: 500,
          //     alignment: Alignment.center,
          //     color: Colors.red,
          //     padding: EdgeInsets.all(30),
          //   ),
          // ),
          // Expanded(
          //   child: Container(
          //     width: 500,
          //     alignment: Alignment.center,
          //     color: Colors.blue,
          //     padding: EdgeInsets.all(30),
          //   ),
          // ),
        ],
      ),

    );
  }
}
