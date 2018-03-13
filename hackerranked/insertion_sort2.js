function insertionSort(n, arr) {
  let pointer = 1;
  while (pointer < n) {
    // compare with left side of the pointer (sorted part)
    for (let i = pointer - 1; i >= 0; i--) {
      // check if position at pointer is smaller than the element on the sorted part of the array.
      if ((arr[pointer] < arr[i]) && ((arr[pointer] > arr[i - 1]) || (i - 1 < 0) )) {
        arr = moveToRight(arr, pointer, i);
        break;
      }
    }
    // expected output format
    console.log(arr.join(' '));
    pointer++;
  }

  return arr;
}

function moveToRight(arr, pointer, n) {
  // save element on pointer
  const element = arr[pointer];
  // shift every element to the right up to n
  for (let i = pointer - 1; i >= n; i--) {
    let temp = arr[i];
    arr[i + 1] = temp;
  }
  // assign saved element to n position
  arr[n] = element;
  return arr;
}

// console.log(moveToRight([1,4,3,5,6,2], 2, 1));

console.log(insertionSort(6, [1, 4, 3, 5, 6, 2]));