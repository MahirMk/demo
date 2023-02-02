import 'package:demo/27-11/ModelList.dart';
import 'package:demo/27-11/OOPsConcepts.dart';
import 'package:demo/5-12-22/SearchList.dart';
import 'package:demo/6-12-22/AsyncAwait.dart';
import 'package:demo/7-12-22/StreamBuilderExample.dart';
import 'package:demo/FunctionsDemo.dart';
import 'package:demo/SimpleCalc.dart';
import 'package:demo/widgets/MyButton.dart';
import 'package:demo/widgets/MyPrimaryButton.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink.shade900,
        title: const Center(child: Text("Home Page")),
      ),
      body: Column(
        children: [
          const SizedBox(height: 10),
          MyPrimaryButton(btntext: "Simple Calc", onclick: (){
            Navigator.of(context).push(
              MaterialPageRoute(builder: (context)=> const SimpleCalc())
            );
          }),
          const SizedBox(height: 30),
          MyPrimaryButton(btntext: "Functions Demo", onclick: (){
            Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => const FunctionsDemo())
            );
          }),
          const SizedBox(height: 30),
          MyPrimaryButton(btntext: "Model List", onclick: (){
            Navigator.of(context).push(
                MaterialPageRoute(builder: (context)=> const ModelList())
            );
          }),
          const SizedBox(height: 30),
          MyPrimaryButton(btntext: "OOPs Concepts", onclick: (){
            Navigator.of(context).push(
                MaterialPageRoute(builder: (context)=> const OOPsConcepts())
            );  
          }),
          const SizedBox(height: 30),
          MyPrimaryButton(btntext: "Search List", onclick: (){
            Navigator.of(context).push(
                MaterialPageRoute(builder: (context)=> const SearchList())
            );
          }),
          const SizedBox(height: 30),
          MyPrimaryButton(btntext: "async-then,stream", onclick: (){
            Navigator.of(context).push(
                MaterialPageRoute(builder: (context)=> const AsyncAwait())
            );
          }),
          const SizedBox(height: 30),
          MyPrimaryButton(btntext: "Stream Builder", onclick: (){
            Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => StreamBuilderExample())
            );
          }),
          const SizedBox(height: 20),
          MyButton(
              onclick: (){},
              btntxt: "Button"
          ),
        ],
      ),
    );
  }
}
