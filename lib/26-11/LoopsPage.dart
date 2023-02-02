import 'package:demo/widgets/MyPrimaryButton.dart';
import 'package:flutter/material.dart';

class LoopsPage extends StatefulWidget {
  @override
  State<LoopsPage> createState() => _LoopsPageState();
}

class _LoopsPageState extends State<LoopsPage> {

  add()
  {
    for(int? i = -5; i! <= 6; i++)
      {
        print(i);
      }
  }

  reverseStar()
  {
    for(int i = 0 ; i <= 4; i++)
      {
        for(int j = 0; j <= i; j++)
          {
            print("*");
          }
      }
  }

  star()
  {
    for(int i = 0 ; i < 5; i++){
      String stars='';
      for(int j = (7-i); j > 1 ;j--) {
        stars += ' ';
      }
      for(int j = 0; j <= i ;j++){
        stars += ' * ';
      }
      print(stars);
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Loops"),
      ),
      body: Column(
        children:  [
          const SizedBox(height: 30),
          MyPrimaryButton(btntext: "Numbers", onclick: (){
            setState(() {
               add();
            });
          }),
          const SizedBox(height: 30),
          MyPrimaryButton(btntext: "Star", onclick: (){
            setState(() {
              star();
            });
          }),
          const SizedBox(height: 30),
          MyPrimaryButton(btntext: "reverseStar", onclick: (){
            setState(() {
              reverseStar();
            });
          }),
          //Text('$txt'),
        ],
      ),
    );
  }
}
