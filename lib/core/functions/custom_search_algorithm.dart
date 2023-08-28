customSearchAlgorithm(String search, List shirtBrands) {
  List<int> resultArr = [];
  for (var i = search.length; i > 0; i--) {
    String currValue = search.substring(0, i).toLowerCase();
    List<Map> result = [];
    for (int y = 0; y < shirtBrands.length; y++) {
      // for (String x in shirtBrands[y][]) {
      String x = shirtBrands[y]['name'];
      if (!x.toLowerCase().contains(currValue)) continue;
      if (resultArr.contains(y)) continue;
      Map cand = {
        'index': y,
        'rate': x.indexOf(currValue).toString(),
      };
      result.add(cand);
    }
    result.sort((a, b) => int.parse(a['rate']).compareTo(int.parse(b['rate'])));
    for (int x = 0; x < result.length; x++) {
      resultArr.add(shirtBrands.indexOf(shirtBrands[result[x]['index']]));
    }
  }
  return resultArr;
}
