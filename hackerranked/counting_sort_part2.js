function countingSort1(arr) {
  const count_array = new Array(100);

  arr.forEach(num => {
    if (count_array[num]) {
      count_array[num]++;
    } else {
      count_array[num] = 1;
    }
  });

  return count_array;
}

function countingSort2(arr){
  count_array = countingSort1(arr);
  listed_array = [];
  for (let i = 0; i < count_array.length; i++) {
    if (count_array[i] !== 0) {
      for (let j = 0; j < count_array[i]; j++) {
        listed_array.push(i);
      }
    }
  }
  return listed_array;
}