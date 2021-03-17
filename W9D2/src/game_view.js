const Game = require("./game.js")

function GameView(ctx) {
  this.ctx = ctx;

}

GameView.prototype.start = function () {
  setInterval(Game.prototype.moveObjects(), 20 )
  setInterval(Game.prototype.draw(this.ctx), 20 )
}

exports.modules = GameView;