import 'package:demo/SearchExample/widgetsfunctions.dart';
import 'package:flutter/material.dart';

class SearchPractice extends StatefulWidget {
  const SearchPractice({Key? key}) : super(key: key);

  @override
  State<SearchPractice> createState() => _SearchPracticeState();
}

class _SearchPracticeState extends State<SearchPractice> {
  TextEditingController searching = TextEditingController();
  TextEditingController add = TextEditingController();

  List<String> searchData = List.empty(growable: true);
  List<String> allData = List.empty(growable: true);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Search Practice"),
      ),
      body: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  decoration: const InputDecoration(
                    hintText: "Search",
                  ),
                  controller: searching,
                  onChanged: (value)=>
                  setState(() {
                    searchData = searchList(allData.toList(),searching.text);
                  }),
                ),
              ),
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      searchData = searchList(allData.toList(), searching.text);
                    });
                  },
                  child: const Icon(Icons.search),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  decoration: const InputDecoration(
                  hintText: "Add"
                  ),
                  controller: add,
                ),
              ),
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      addList(allData,add.text);
                    });
                    searchData = allData;
                    add.clear();
                  },
                  child: const Icon(Icons.add),
                ),
              ),
            ],
          ),
          Expanded(
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: searchData.length,
              itemBuilder: (context, index) {
                return Center(
                  child: Text(searchData[index]),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
