// just dividing left and right based on pivot

function quickSortPartition(arr) {
  let pivot = arr[0];
  const left = [];
  const right = [];

  for (let i = 1; i < arr.length; i++) {
    if (arr[i] < pivot) {
      left.push(arr[i]);
    } else {
      right.push(arr[i])
    }
  }

  const result = left.concat([pivot].concat(right));
  console.log(result);
  return result;
}

quickSortPartition([4, 5, 3, 7, 2]);