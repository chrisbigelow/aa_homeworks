
// function mysteryScoping1() {
//   var x = 'out of block';
//   if (true) {
//     var x = 'in block';
//     console.log(x);
//   }
//   console.log(x);
// }
//
// function mysteryScoping2() {
//   const x = 'out of block';
//   if (true) {
//     const x = 'in block';
//     console.log(x);
//   }
//   console.log(x);
// }

// function mysteryScoping3() {
//   const x = 'out of block';
//   if (true) {
//     var x = 'in block';
//     console.log(x);
//   }
//   console.log(x);
// }

// function mysteryScoping4() {
//   let x = 'out of block';
//   if (true) {
//     let x = 'in block';
//     console.log(x);
//   }
//   console.log(x);
// }

// function mysteryScoping5() {
//   let x = 'out of block';
//   if (true) {
//     let x = 'in block';
//     console.log(x);
//   }
//   let x = 'out of block again';
//   console.log(x);
// }

function madLib(verb, adj, noun) {
  return `We shall ${verb.toUpperCase()} ` +
  `the ${adj.toUpperCase()} ${noun.toUpperCase()}.`;
}


function isSubstring(searchString, subString) {
  return searchString.includes(subString);
}

function fizzBuzz(numbers) {
  const rt_array = [];
  numbers.forEach(function(item) {
    if ((item % 5 === 0) ^ (item % 3 === 0)) {
      rt_array.push(item);
    }
  });
  return rt_array;
}

function isPrime(num) {
  for(let i = 0; i < num; i++)
    if(num % i === 0) return false;
  return num !== 1;
}


function sumOfNPrimes(n) {
  let counter = 0;
  let sum = 0;
  let current = 2;

  while(counter < n) {
    if (isPrime(current)) {
      sum += current;
      counter++;
    }
    current++;
  }
  return sum;

}
