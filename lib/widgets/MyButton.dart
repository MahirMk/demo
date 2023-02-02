import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {

  GestureTapCallback onclick;
  String? btntxt;
  MyButton({super.key, required this.onclick,required this.btntxt});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 65,
      width: 210,
      child: TextButton(
        style: ElevatedButton.styleFrom(
          // elevation: 0,
          // shadowColor: Colors.transparent,
         // backgroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.0),
          ),
          side: BorderSide(
            width: 1.0,
            color: Colors.pink.shade900
          ),
        ),
        onPressed: onclick,
        child: Text(btntxt!,style: TextStyle(fontSize: 20,color: Colors.pink.shade900),),
      ),
    );
  }
}
