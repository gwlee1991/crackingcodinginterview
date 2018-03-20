function missingNumbers(arr1, arr2) {
  const count = {};

  arr2.forEach(element => {
    if (count[element]){
      count[element] += 1;
    } else {
      count[element] = 1;
    }
  });

  arr1.forEach(element => {
    count[element] -= 1;
  })

  const result = [];

  Object.keys(count).forEach(key => {
    if (count[key] !== 0) {
      result.push(key);
    }
  });

  console.log(result.sort().join(" "));
  return result.sort();
}

const listA = [203, 204, 205, 206, 207, 208, 203, 204, 205, 206];
const listB = [203, 204, 204, 205, 206, 207, 205, 208, 203, 206, 205, 206, 204];

missingNumbers(listA, listB);