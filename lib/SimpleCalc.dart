import 'package:demo/widgets.dart';
import 'package:demo/widgets/MyPrimaryButton.dart';
import 'package:flutter/material.dart';

class SimpleCalc extends StatefulWidget {
  const SimpleCalc({Key? key}) : super(key: key);

  @override
  State<SimpleCalc> createState() => _SimpleCalcState();
}

class _SimpleCalcState extends State<SimpleCalc> {

  final TextEditingController _num1 = TextEditingController();
  final TextEditingController _num2 = TextEditingController();

  double? txtTotal;
  double? calculatorSwitch(double? num1, double? num2, {String? btn})
  {
    double result;
    switch (btn)
    {
      case "add" :
      result =  num1! + num2!;
      break;

      case "sub" :
        result = num1! - num2!;
        break;

      case "multi" :
        result = num1! * num2!;
        break;

      default :
        result =  num1! / num2!;
        break;
    }
    return result;
  }
  double? calculator(double? num1, double? num2, {String? btn}) {

    //double result;
    print(btn);
    if (btn == "add") {
      return num1! + num2!;
    }
    else if (btn == "sub") {
      return num1! - num2!;
    }
    else if (btn == "multi") {
      return num1! * num2!;
    }
    else {
      return num1! / num2!;
    }
    // result = result;
    // return result;
    // return btn as double?;
  }
  double? calculation(double? a, double? b)
  {
    print("first 1 = $a");
    print("second 2 = $b");
    return  a! / b!;
  }

  double? calculation1([double? a, double? b])
  {
    // print("cal 2 = $b");
    // print("cal 1 = $a");
    print("first 3= $a");
    print("second 4 = $b");
    return  a! / b!;
  }
  double? calculation2({required double? a, double? b})
  {
    print("first 5 = $a");
    print("second 6= $b");
    return  a! / b!;
  }
  double? calculation3(double? c,{double? a, double? b})
  {
    print("first 5 = $a");
    print("second 6 = $b");
    return  a! / b!;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade900,
        title: const Center(child:  Text("Calculator",style: TextStyle(fontSize: 25),)),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 10),
            Image.asset("img/calc1.webp",height: 200,),
            const SizedBox(height: 10),
            const Align(
                alignment: Alignment.topLeft,
                child: Padding(padding: EdgeInsets.symmetric(vertical: 1.0, horizontal: 20.0),
                  child: Text("NUMBER 1",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w900),),
                )),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: TextField(
                style: const TextStyle(fontWeight: FontWeight.bold),
                cursorColor: Colors.blue.shade900,
                controller: _num1,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                     border: OutlineInputBorder(
                      borderSide: BorderSide(width: 4, color: Colors.blue),
                    ),
                    hintText: "Type a Number1",
                    hintStyle:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                  ),
              ),
            ),
            const Align(
              alignment: Alignment.topLeft,
                child: Padding(padding: EdgeInsets.symmetric(vertical: 1.0, horizontal: 20.0),
                  child: Text("NUMBER 2",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w900),),
                )),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: TextField(
                style: const TextStyle(fontWeight: FontWeight.bold),
                cursorColor: Colors.blue.shade900,
                controller: _num2,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  border : OutlineInputBorder(
                    borderSide: BorderSide(width: 3, color: Colors.blue),
                  ),
                  hintText: "Type a Number2",
                  hintStyle:
                  TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                ),
              ),
            ),
            //BUTTONS
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: MyPrimaryButton(
                        onclick: () {
                          // var total = int.parse(num1) + int.parse(num2);

                          //  print(_num1.text);
                          //  print(_num2.text);

                          // var total = int.parse(_num1.text) + int.parse(_num2.text);
                          // print(total);
                          //calculator(67,50);
                          setState(() {
                            txtTotal = calculator(double.parse(_num1.text), double.parse(_num2.text), btn: "add");

                          });
                        },
                        btntext: (" + ADD"),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: MyPrimaryButton(
                        onclick: (){
                          setState(() {
                            txtTotal = calculator(double.parse(_num1.text),double.parse(_num2.text),btn: "sub");});
                        },
                        btntext: " - SUBSTRACT",
                      ) ,
                    ),
                  ],
                ),
                //SUBSTRACTION
                //MULTIPICATION
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: MyPrimaryButton(
                        onclick: () {
                          setState(() {
                            txtTotal = calculator(double.parse(_num1.text), double.parse(_num2.text), btn: "multi");
                          });
                        },
                        btntext: (" * MULTIPLY"),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: MyPrimaryButton(
                        onclick: () {
                          // calculation(2,2);
                          // calculation1(2,35);
                          // calculation2(b: 20,a: 30);
                          // //calculation2(34: 45); required
                          // calculation3(345);
                          // print(calculation1(20,45));

                          //calculation(double.parse(_num1.text), double.parse(_num2.text));
                          setState(() {
                            txtTotal = calculator(double.parse(_num1.text), double.parse(_num2.text), btn: "div");
                            //txttotal = calculation(double.parse(_num1.text), double.parse(_num2.text));
                          });
                        },
                        btntext: (" / DIVIDE"),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 40),
            //UI
            Container(
              width: 200,
              height: 50,
              color: Colors.blue.shade900,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Expanded(
                      child: Text(
                        'Total: $txtTotal',
                        style: const TextStyle(fontSize: 30,color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
