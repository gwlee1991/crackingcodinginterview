function sosDifference(str){
  let sosNum = str.length/3;
  let expected = "";

  for (let i = 0; i < sosNum; i++){
    expected += "SOS";
  }
  let diff = 0;
  for (let i = 0; i < str.length; i++){
    console.log(str[i]);
    console.log(expected[i]);
    if (str[i] !== expected[i]){
      diff += 1;
    }
  }
  console.log(diff);
}

let string = "SOSSPSSQSSOR";
sosDifference(string);