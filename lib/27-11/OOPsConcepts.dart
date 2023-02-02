import 'package:demo/widgets.dart';
import 'package:flutter/material.dart';

class Person {
  Person({this.name,this.age,this.height,this.myList});
  String? name;
  int? age;
  double? height;
  List<String>? myList;
}

 // Use .where

class OOPsConcepts extends StatefulWidget {
  const OOPsConcepts({Key? key}) : super(key: key);

  @override
  State<OOPsConcepts> createState() => _OOPsConceptsState();
}

class _OOPsConceptsState extends State<OOPsConcepts> {

  final person = Person(name: "Mahir Mk",age: 20,height: 6.0,myList: ["Name","Pen"]);

  List<int> numbers = [13, 2890,95234 ,79357,300];

  TextEditingController onType = TextEditingController();

  List<String> names = ["Mahir","Faheem","Fariha" ,"Anas"];

  // evenNumber()
  // {
  //   List<int> getEven = numbers;
  //   getEven.where((numb) => (numb % 2 == 0));
  //   print(getEven);
  //   return getEven;
  // }

  // evenNumber()
  // {
  //   return numbers.where((numb) => (numb % 2 == 0));
  // }

  // Iterable<int> evenNumbers = numbers.where((num) => (num % 2 == 0));



  //Iterable<String> visibleName = names.where((name)=>name.contains("h"));

  //Use .where
  @override
  Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.pink.shade900,
          title: const Text("Where?"),
        ),
         body: Column(
           children: [
             Column(
               children: [
                 TextFormField(
                   cursorColor: Colors.red,
                   style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),
                   controller: onType,
                   decoration: const InputDecoration(
                     labelStyle: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.purple),
                     labelText: 'Search...',
                   ),
                 ),
               ],
             ),
             const SizedBox(height: 40),
             ElevatedButton(
               style: ElevatedButton.styleFrom(
                 primary: Colors.blue.shade900
               ),
                 onPressed: (){
                   names = search(names.toList(),onType.text);
                   print('Searching: ${search(names,onType.text).toList()}');
                 },
                 child: const Text("Search")
             ),
             const SizedBox(height: 40),
             Expanded(
               child: ListView.builder(
                   shrinkWrap: true,
                   itemCount: names.length,
                   itemBuilder: (context,index) {
                     return Center(
                       child: Text(names[index],
                         style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.purple.shade900),),
                     );
                   }),
             )
           ],
         ),
    );
  }
}
// ElevatedButton(onPressed: (){
//   //person.myList?.add("Pencil");
//   //   print(person.myList);
//   //   print(person.age);
//   //   print(person.height);
//    // print(visibleName);
//   //evenNumber(numbers);
//   print(evenNumber(numbers));
//   print(search(names));
//  // evenNumber(numbers);
// },
//   child: const Text("Click "),
// ),
