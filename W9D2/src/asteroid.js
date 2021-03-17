const MovingObject = require("./moving_object.js");
const Util = require("./util.js");


function Asteroid(options) {
  // this.pos = options.pos;
  // this.x = options.pos[0];
  // this.y = options.pos[1];
  
  
  options.pos = options.pos;
  options.color = '#6969f4';
  options.radius = 7;
  options.vel = Util.randomVec(5);
  MovingObject.call(this, options)
  
}



Util.inherits(Asteroid, MovingObject);

// new Asteroid({ pos: [30, 30] });

module.exports = Asteroid;