import 'package:flutter/material.dart';

import '../widgets.dart';

class SearchListDemo extends StatefulWidget {
  const SearchListDemo({Key? key}) : super(key: key);

  @override
  State<SearchListDemo> createState() => _SearchListDemoState();
}

class _SearchListDemoState extends State<SearchListDemo> {

  TextEditingController searching = TextEditingController();
  TextEditingController add = TextEditingController();

  List<String> searchListData = List.empty(growable: true);
  List<String> addData = List.empty(growable: true);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink.shade900,
        title: const Text("Search List"),
      ),
      body: Column(
        children: [
          SizedBox(height: 10),
          Row(
            children: [
              // TextField
              Expanded(
                flex: 4,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      hintText: "Search",
                      border: OutlineInputBorder(),
                    ),
                    controller: searching,
                    onChanged: (value) =>
                        setState(() {
                          searchListData = searchList(addData.toList(),searching.text);
                        }),
                  ),
                ),
              ),
              //Button
              Expanded(
                child: GestureDetector(
                  onTap: () {
                   setState(() {
                     searchListData = searchList(addData.toList(),searching.text);
                    // print('Searching: ${searchList(addData,searching.text).toList()}');
                   });
                  },
                  child: Icon(Icons.search,size: 40),
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          Row(
            children: [
              // TextField
              Expanded(
                flex: 4,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      hintText: "Add",
                      border: OutlineInputBorder(),
                    ),
                    controller: add,
                  ),
                ),
              ),
              //Button
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      addToList(addData,add.text);
                    });
                    searchListData = addData;
                    add.clear();
                  },
                  child: Icon(Icons.add,size: 40),
                ),
              ),
            ],
          ),
          SizedBox(height: 30),
          Text("List View",style: TextStyle(fontSize: 30,color: Colors.pink.shade900),),
          SizedBox(height: 30),
          Expanded(
            flex: 9,
            child: ListView.builder(
                shrinkWrap: true,
                itemCount: searchListData.length,
                itemBuilder: (context,index) {
                  return Center(
                    child: Text(searchListData[index],
                      style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.purple.shade900),),
                  );
                }),
          ),
          SizedBox(height: 30),
          // Expanded(
          //   flex: 9,
          //   child: ListView.builder(
          //       shrinkWrap: true,
          //       itemCount: searchListData.length,
          //       itemBuilder: (context,index) {
          //         return Center(
          //           child: Text(searchListData[index],
          //             style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.green.shade900),),
          //         );
          //       }),
          // ),
        ],
      ),
    );
  }
}
