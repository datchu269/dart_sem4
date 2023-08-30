import 'dart:math';
import 'dart:io';

void main(List<String> arguments) {
  List array = [1, 5, 8, 2, 4, 9, 7];
  List array2 = [1, 5, 8, 2, 4, 9, 7];

  print("-----Insertion Sort-----");
  print(array);
  bubbleSort(array);
  print(array);
  
  print("-----Bubble Sort-----");
  print(array2);
  insertionSort(array2);
  print(array2);
}

void bubbleSort(List array) {
  int size = array.length;
  int temp;
  for (var i = 0; i < size; i++) {
    for (var j = i + 1; j < size; j++) {
      if (array[i] > array[j]) {
        temp = array[j];
        array[j] = array[i];
        array[i] = temp;
      }
      // if (arrs[i] < arrs[j]) {
      //   temp = arrs[i];
      //   arrs[i] = arrs[j];
      //   arrs[j] = temp;
      // }
    }
  }
}

void insertionSort(List array) {
  int size = array.length;
  for (var i = 1; i < size; i++) {
    var key = array[i];
    var j = i - 1;

    while (j >= 0 && key < array[j]) {
      array[j + 1] = array[j];
      --j;
    }

    array[j + 1] = key;
  }
}

