// window.setTimeout(function () {alert('HAMMERTIME');},5000);

// function hammerTime (time) {
//   window.setTimeout(function () {
//     alert(`${time} is HAMMER TIME!`);
//   },time);
// }


// const cb = function cb() {
//   alert(`${time} is hammertime!`);
// };
//
//
// function hammerWait(time) {
//   window.setTimeout(cb, time);
// }



const readline = require('readline');


const reader = readline.createInterface({
  input: process.stdin,
  output: process.stdout
});


function tandb() {
  reader.question("Would you like tea?", (res) => {
    console .log(`You replied ${res}`);


  reader.question("Would you like biscuts?", (res2) => {
    console .log(`You replied ${res2}`);



  const first = (res === 'yes') ? "do" : "don't";
  const second = (res2 === 'yes') ? "do" : "don't";

  console.log(`${first} ${second}`);
  reader.close();

  });
  });
}


function Cat () {
  this.name = 'Markov';
  this.age = 3;
}

function Dog () {
  this.name = 'Noodles';
  this.age = 4;
}

Dog.prototype.chase = function (cat) {
  console.log(`My name is ${this.name} and I'm chasing ${cat.name}! Woof!`);
};

const Markov = new Cat ();
const Noodles = new Dog ();
