import 'package:flutter/material.dart';

class Person {
  Person({this.name, this.id});
  int? id;
  String? name;
}

class ModelList extends StatefulWidget {
  const ModelList({Key? key}) : super(key: key);

  @override
  State<ModelList> createState() => _ModelListState();
}

class _ModelListState extends State<ModelList> {

  List<Person> personList = [
    Person(name: "Mahir", id: 1,),
    Person(name: "Faheem", id: 2,),
    Person(name: "Faisal", id: 3,),
    Person(name: "Saad", id: 4,),
    Person(name: "anas", id: 5,)];


  ///------- for in loop -----------///
  product()
  {
    for(var text in personList)
    {
      print(text.name);
    }
  }


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    //personList[(3)];
    //print(Persons.);


  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("OOPs Models"),
      ),
      body: Column( 
        children: [
          ElevatedButton(onPressed: (){
            //print(personList.last.name);
            product();
            //print(personList[2].name);
          }, child: const Text("List"))
        ],
      ),
    );
  }
}
