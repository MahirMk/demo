import 'package:demo/5-12-22/SearchListFunction.dart';
import 'package:flutter/material.dart';

class SearchList extends StatefulWidget {
  const SearchList({Key? key}) : super(key: key);

  @override
  State<SearchList> createState() => _SearchListState();
}

class _SearchListState extends State<SearchList> {


  TextEditingController search = TextEditingController();
  TextEditingController add = TextEditingController();

  List<String> searchInfo = List.empty(growable: true);
  List<String> addInfo = List.empty(growable: true);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade900,
        title: const Center(child: Text("Search List")),
      ),
      body: Column(
        children: [
          Row(
            children: [
              Expanded(
                flex: 6,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      hintText: "Search..."
                    ),
                    controller: search,
                    onChanged: (value) =>  {
                        setState(() {
                          searchInfo = searchListInfo(addInfo,search.text);
                        }),
                    },
                  ),
                ),
              ),
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      searchInfo = searchListInfo(addInfo,search.text);
                    });

                  },
                  child: const Icon(Icons.search,color: Colors.blue),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                flex: 6,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: TextFormField(
                    decoration: const InputDecoration(
                        hintText: "Add"
                    ),
                    controller: add,
                  ),
                ),
              ),
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      addListInfo(addInfo, add.text);
                    });
                    searchInfo = addInfo;
                    add.clear();
                  },
                  child: const Icon(Icons.add,color: Colors.blue,),
                ),
              ),
            ],
          ),
          const SizedBox(height: 30),
          const Text("ListView",style: TextStyle(fontSize: 30),),
          const SizedBox(height: 30),
          Expanded(
            child: ListView.builder(
                itemCount: searchInfo.length,
                itemBuilder: (BuildContext context, int index) {
                  return Center(
                      child: Text(searchInfo[index],style: TextStyle(color: Colors.teal.shade900,fontSize: 25),)
                  );
                }),
          ),
        ],
      ),
    );
  }
}
