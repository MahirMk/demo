import 'package:flutter/material.dart';
class MyPrimaryButton extends StatelessWidget {

  String? btntext="";
  VoidCallback  onclick;
  MyPrimaryButton({super.key,  required this.btntext,required this.onclick});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.pink.shade900,
          shadowColor: Colors.black,
          elevation: 6,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.0)),
              minimumSize:  const Size(210, 65),
        ),
        onPressed: onclick,
        child: Text(btntext!,style: const TextStyle(color: Colors.white,fontSize: 18)),
      ),
    );
  }
}