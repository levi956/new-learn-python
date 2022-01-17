import 'package:flutter/material.dart';
import 'package:new_learn_python/widgets/bold_text_head.dart';
import 'package:new_learn_python/widgets/code_text.dart';
import 'package:new_learn_python/widgets/custom_appbar.dart';
import 'package:new_learn_python/widgets/main_body_text.dart';

class SortingAlgo extends StatelessWidget {
  static const sorr1 = '''
A Sorting Algorithm is used to rearrange a given array or list elements according to a comparison operator on the elements. The comparison operator is used to decide the new order of element in the respective data structure.
Below are some sorting Algorithms implemented in python
''';

  static const sorr2 = '''
Bubble sort is a simple sorting algorithm. This sorting algorithm is comparison-based algorithm in which each pair of adjacent elements is compared and the elements are swapped if they are not in order.
Below is an implementation using python
''';

  static const code2 = '''
def bubbleSort(arr):
  n = len(arr)

  # Traverse through all array elements
  for i in range(n):

    # Last i element are already in place
    for j in range(0, n-i-1):

      # Traverse the array from 0 to n-i-1
      # Swap if the element found is greater
      # than the next elements
      if arr[j] > arr[j+1]:
        arr[j] , arr[j+1] = arr[j+1], arr[j]

# test code
arr = [64,34,25,12,22,11,90]
bubbleSort(arr)

print('Sorted array is:')
for i in range(len(arr)):
  print('%d' %arr[i])
''';

  static const sorr3 = '''
The Selection Sort algorithm sorts an array by finding the minimum value of the unsorted part and then swapping it with the first unsorted element. It is an in-place algorithm, meaning you won't need to allocate additional lists.
''';

  static const code3 = '''
# Selection Sort
A = [64,25,12,22,11]

# Traverse through the array element
for i in range(len(A)):

  # find the minimum element in remaining unsorted array
  min_index = i
  for j in range(i+1), len(A)):
    if A[min_idx] > A[j]:
      min_idx = j

  # Swap the found minimum element with the first element
  A[i], A[min_idx] = A[min_idx], A[i]

# test code 
print("Sorted array")
for i in range(len(A)):
  print("%d" %A[i])
''';

  static const sorr4 = '''
Insertion sort is a simple sorting algorithm that works similar to the way you sort playing cards in your hands. The array is virtually split into a sorted and an unsorted part. Values from the unsorted part are picked and placed at the correct position in the sorted part.
''';

  static const code4 = '''
# Function to do insertion sort 
def insertionSort(arr):

  #Traverse through 1 to len(arr)
  for i in range(1, len(arr)):

    key = arr[i]

    # Move elements of arr[0...i-1], that are greater 
    # than key, to one position ahead of their current position.
    j = i-1
    while j>=0 and key < arr[j]:
      arr[j] = arr[j+1] = arr[j]
      j -= 1
    arr[j + 1] = key

# test code 
arr = [12,11,13,5,6]
insertionSort(arr)
for i in range(len(arr)):
  print("%d" % arr[i])
''';

  const SortingAlgo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: const CustomAppbar(header: 'Sorting Algorithms'),
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Container(
            margin: const EdgeInsets.only(left: 12, right: 12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const <Widget>[
                MainText(mainText: sorr1),
                BoldTextHead(boldHead: 'Bubble Sort'),
                MainText(mainText: sorr2),
                CodeText(codeText: code2),
                BoldTextHead(boldHead: 'Selection Sort'),
                MainText(mainText: sorr3),
                CodeText(codeText: code3),
                BoldTextHead(boldHead: 'Insertion Sort'),
                MainText(mainText: sorr4),
                CodeText(codeText: code4)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
