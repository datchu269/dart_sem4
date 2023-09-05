void main(List<String> args) {
  List arr = [1, 2, 4, 5, 7, 8, 9, 10];
  int result = iterativeBinarySearch(arr, 4);
  int result2 = recursiveBinarySearch(arr, 4, 0, arr.length - 1);
  if (result != -1) {
    print("Element is present at index : ${result}");
  } else {
    print("Element is not present in array");
  }

  if (result2 != -1) {
    print("Element is present at index : ${result2}");
  } else {
    print("Element is not present in array");
  }
}

int iterativeBinarySearch(List arr, int x) {
  int l = 0;
  int r = arr.length - 1;
  while (r >= l) {
    int m = l + (r - l) ~/ 2;
    if (arr[m] == x) {
      return m;
    }

    if (arr[m] < x) {
      l = m + 1;
    } else {
      r = m - 1;
    }
  }
  return -1;
}

int recursiveBinarySearch(List arr, int x, int l, int r) {

  if (r >= 0) {
    int m = l + (r - l) ~/ 2;
    print("l : ${l}, r : ${r}, m : ${m}, (r - l) ~/ 2 : ${(r - l) ~/ 2}, arr[m] : ${arr[m]}, x : ${x}");

    if (arr[m] == x) {
      return m;
    }

    if (arr[m] < x) {
      return recursiveBinarySearch(arr, x, m + 1, r);
    } else {
      return recursiveBinarySearch(arr, x, l, m - 1);
    }
  }

  return -1;
}
