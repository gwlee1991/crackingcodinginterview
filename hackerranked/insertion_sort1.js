function insertionSort(n, arr) {
  const element = arr[n - 1];

  for (let i = n - 1; i >= 0; i--) {
    let curr = element;
    let next = arr[i - 1];
    if (curr < next) {
      arr[i] = next;
    } else {
      arr[i] = curr;
      console.log(arr.join(' ')); //hackerranked expected output format
      break;
    }
  }
  console.log(arr.join(" ")); // hackerranked expected output format
  return arr;
}