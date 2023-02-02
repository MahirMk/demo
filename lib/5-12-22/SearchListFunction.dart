List<String> searchListInfo(List<String> getData,String searchData)
{
  List<String> getSearch = getData.where((String text) => text.toLowerCase().contains(searchData.toLowerCase())).toList();
      return getSearch;
}
addListInfo(List<String> getAdd,String addData)
{
  getAdd.add(addData);
}