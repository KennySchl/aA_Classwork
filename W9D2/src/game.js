

function Game(canvas) {
  const asteroids = [];

  const DIM_X = canvas.width;
  const DIM_Y = canvas.height;
  const NUM_ASTEROIDS = 10;
  this.addAsteroids()
}

Game.prototype.addAsteroids = function () {
  for (let i = 1; i <= this.NUM_ASTEROIDS; i++) {
    let newAst = `asty${i}`
    newAst = new Asteroid({
      pos: [Math.random() * DIM_X, Math.random() * DIM_Y]
    });
    this.asteroids.push(ast)
  }
};

Game.prototype.draw = function (ctx) {
  ctx.clearRect(0, 0, DIM_X, DIM_Y)
  for (let i = 0; i < asteroids.length; i++) {
    this.asteroids[i].draw(ctx)
  }
}

Game.prototype.moveObjects = function () {
  for (let i = 0; i < asteroids.length; i++) {
    this.asteroids[i].move()
  }
}

module.exports = Game;