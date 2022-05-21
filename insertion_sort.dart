import 'dart:math';

void main(List<String> args) {
  List<int> unsortedList = <int>[];
  for (var i = 0; i < 10; i++) {
    unsortedList.add(Random().nextInt(100));
  }
  print(unsortedList);
  print(insertionSort(unsortedList));
}

List<int> insertionSort(List<int> list) {
  for (var j = 1; j < list.length; j++) {
    var key = list[j];
    var i = j - 1;
    while (i >= 0 && list[i] > key) {
      list[i + 1] = list[i];
      i -= 1;
      list[i + 1] = key;
    }
  }
  return list;
}
