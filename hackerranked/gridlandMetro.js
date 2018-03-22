// naive solution => time complexity O(n^2);
function gridlandMetro(n, m, k, tracks) {
  const grid = [];
  
  // form grid with lampposts
  for(let i = 0; i < n; i++) {
    let row = [];
    for (let j = 0; j < m; j++) {
      row.push("l");
    }
    grid.push(row);
  }

  // fill grid with tracks
  tracks.forEach(track => {
    let r = track[0] - 1;
    let c1 = track[1] - 1;
    let c2 = track[2] - 1;
    for (let i = c1; i <= c2; i++) {
      grid[r][i] = "t";
    }
  })

  // iterate through grid and count number of lampposts
  let lampposts = 0;
  grid.forEach(row => {
    row.forEach(column => {
      if (column === "l") {
        lampposts += 1;
      }
    })
  })

  return lampposts;
}

function gridlandMetro2(n, m, k, tracks) {
  
}

const n = 4;
const m = 4;
const k = 3;
const tracks = [[2,2,3],[3,1,4],[4,4,4]];

console.log(gridlandMetro(n, m, k, tracks));