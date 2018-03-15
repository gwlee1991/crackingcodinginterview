function countingSort(arr) {
  const count_array = new Array(100);

  arr.forEach(num => {
    if(count_array[num]) {
      count_array[num]++;
    } else {
      count_array[num] = 1;
    }
  });

  return count_array;
}

const sample = [1,1,1,1,3,5,4,3,2,1,7,0];
const result = countingSort(sample);
console.log(result.join(" "));