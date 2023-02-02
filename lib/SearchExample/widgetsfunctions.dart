List<String> searchList(List<String> getSearch , String searchData) {
  List<String> returnSearch = getSearch.where((String text) => text.toLowerCase().contains(searchData.toLowerCase())).toList();
  return returnSearch;
}
addList(List<String> getData , String searching)
{
  getData.add(searching);
}