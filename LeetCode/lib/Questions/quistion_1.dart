void main() {
  List<int> nums1 = [1, 2, 3, 4, 5, 6];
  List<int> nums2 = [1, 2, 3, 4, 5, 6, 7, 5];

  // print(checkingArrayByForIn(nums1));
  // print(checkingArrayByForIn(nums2));
  // print("***************");
  // print(checkingArrayByForLoop(nums1));
  print(checkingArrayByForLoop(nums2));
}

bool checkingArrayByForIn(List arraysValue) {
  List filterArray = [];
  for (var element in arraysValue) {
    if (filterArray.contains(element)) {
      return true;
    } else {
      filterArray.add(element);
      // return false;
    }
  }
  return false;
}

bool checkingArrayByForLoop(List values) {
  for (var i = 0; i < values.length; i++) {
    print(i);
    for (var j = i + 1; j < values.length; j++) {
      print("$i & $j");
      // print(i);
      if (values[i] == values[j]) {
        return true;
      }
    }
  }
  return false;
}
