console.log("Webpack is working");
const MovingObject = require("./moving_object.js");
const Asteroid = require("./asteroid.js");
const GameView = require("./game_view.js");
const Game = require("./game.js");


document.addEventListener("DOMContentLoaded", () => {
  const canvas = document.getElementById("game-canvas");
  const game = new Game(canvas);
  const ctx = canvas.getContext("2d");
  const gameView = new GameView(ctx)
  // ctx.fillStyle = "red";
  // ctx.fillRect(10,10,40,30);
  console.log("DOM fully loaded and parsed");

  const mo = new MovingObject({
    pos: [30, 30],
    vel: [10, 10],
    radius: 5,
    color: "#00FF00",
  });

  // const ast = new Asteroid({ pos: [30, 30] });

  window.mo = mo;
  window.ast = ast;
  window.Game = Game;
  window.GameView = GameView;
  window.MovingObject = MovingObject;
  window.Asteroid = Asteroid;
  window.ctx = ctx;
});

// const canvas = document.getElementById('bird-game');
// const game = new FlappyBird(canvas);
// game.restart();
// canvas.addEventListener("mousedown", game.click.bind(game));
