

function titleize(names, callback) {
  let titleized = names.map(name => `Mx. ${name} `+
    `Jingleheimer Schmidt`);
    callback(titleized);
}


titleize(['mary','jacob','paul'],(names) => {
  names.forEach(name => console.log(name));
});


function Elephant(name, height, tricks) {
  this.name = name;
  this.height = height;
  this.tricks = tricks;
}


Elephant.prototype.trumpet = function() {
  console.log(`${this.name} the the elephant goes 'phrRRRRRRRRRRR!!!!!!!`);
};

Elephant.prototype.grow = function() {
  this.height += 12;
};

Elephant.prototype.addTrick = function(trick){
  this.tricks.push(trick);
};

Elephant.prototype.play = function(){
  let rand = this.tricks[Math.floor(Math.random() * this.tricks.length)];
  console.log(`${this.name} is ${rand}!`);
};
