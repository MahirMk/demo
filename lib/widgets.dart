List<int> evenNumber(List<int> numbers) {
  List<int> getEven = numbers.where((int numb) => (numb % 2 == 0)).toList();
  return getEven;
}
List<String> search(List<String> names, String searchData) {
  List<String> getSearch = names.where((String text) =>
      text.contains(searchData)).toList();

  print(getSearch);

  return getSearch;
}


/// --------- searchList --------- ///
  List<String> searchList(List<String> getAddData, String searchData) {
  List<String> getSearch = getAddData.where((String text) => text.toLowerCase(). contains(searchData.toLowerCase())).toList();
  return getSearch;
    //print(getSearch);
}
 addToList(List<String> addData  ,String searching) {
    addData.add(searching);
}



/// -------- async &&& await &&& then ---------- ///
printFileContent()  async {

  //asyn&await
  String filecontent = await downLoadAFile();
  print('the content of the file is -async&await-> $filecontent');

  //then
  downLoadAFile().then((id){
    print('the content of the file is -then-> $id');
  });
}
Future<String> downLoadAFile() {
  Future<String> result = Future.delayed(const Duration(milliseconds: 3000),(){
    return 'My Secret File Content';
  });
  return  result;
}