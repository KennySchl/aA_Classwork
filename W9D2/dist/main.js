/*
 * ATTENTION: The "eval" devtool has been used (maybe by default in mode: "development").
 * This devtool is neither made for production nor for readable output files.
 * It uses "eval()" calls to create a separate source file in the browser devtools.
 * If you are trying to read the output file, select a different devtool (https://webpack.js.org/configuration/devtool/)
 * or disable the default devtool with "devtool: false".
 * If you are looking for production-ready output files, see mode: "production" (https://webpack.js.org/configuration/mode/).
 */
/******/ (() => { // webpackBootstrap
/******/ 	var __webpack_modules__ = ({

/***/ "./src/asteroid.js":
/*!*************************!*\
  !*** ./src/asteroid.js ***!
  \*************************/
/***/ ((module, __unused_webpack_exports, __webpack_require__) => {

eval("const MovingObject = __webpack_require__(/*! ./moving_object.js */ \"./src/moving_object.js\");\r\nconst Util = __webpack_require__(/*! ./util.js */ \"./src/util.js\");\r\n\r\n\r\nfunction Asteroid(options) {\r\n  // this.pos = options.pos;\r\n  // this.x = options.pos[0];\r\n  // this.y = options.pos[1];\r\n  \r\n  \r\n  options.pos = options.pos;\r\n  options.color = '#6969f4';\r\n  options.radius = 7;\r\n  options.vel = Util.randomVec(5);\r\n  MovingObject.call(this, options)\r\n  \r\n}\r\n\r\n\r\n\r\nUtil.inherits(Asteroid, MovingObject);\r\n\r\n// new Asteroid({ pos: [30, 30] });\r\n\r\nmodule.exports = Asteroid;\n\n//# sourceURL=webpack:///./src/asteroid.js?");

/***/ }),

/***/ "./src/game.js":
/*!*********************!*\
  !*** ./src/game.js ***!
  \*********************/
/***/ ((module) => {

eval("\r\n\r\nfunction Game(canvas) {\r\n  const asteroids = [];\r\n\r\n  const DIM_X = canvas.width;\r\n  const DIM_Y = canvas.height;\r\n  const NUM_ASTEROIDS = 10;\r\n  this.addAsteroids()\r\n}\r\n\r\nGame.prototype.addAsteroids = function () {\r\n  for (let i = 1; i <= this.NUM_ASTEROIDS; i++) {\r\n    let newAst = `asty${i}`\r\n    newAst = new Asteroid({\r\n      pos: [Math.random() * DIM_X, Math.random() * DIM_Y]\r\n    });\r\n    this.asteroids.push(ast)\r\n  }\r\n};\r\n\r\nGame.prototype.draw = function (ctx) {\r\n  ctx.clearRect(0, 0, DIM_X, DIM_Y)\r\n  for (let i = 0; i < asteroids.length; i++) {\r\n    this.asteroids[i].draw(ctx)\r\n  }\r\n}\r\n\r\nGame.prototype.moveObjects = function () {\r\n  for (let i = 0; i < asteroids.length; i++) {\r\n    this.asteroids[i].move()\r\n  }\r\n}\r\n\r\nmodule.exports = Game;\n\n//# sourceURL=webpack:///./src/game.js?");

/***/ }),

/***/ "./src/game_view.js":
/*!**************************!*\
  !*** ./src/game_view.js ***!
  \**************************/
/***/ ((__unused_webpack_module, exports, __webpack_require__) => {

eval("const Game = __webpack_require__(/*! ./game.js */ \"./src/game.js\")\n\nfunction GameView(ctx) {\n  this.ctx = ctx;\n\n}\n\nGameView.prototype.start = function () {\n  setInterval(Game.prototype.moveObjects(), 20 )\n  setInterval(Game.prototype.draw(this.ctx), 20 )\n}\n\nexports.modules = GameView;\n\n//# sourceURL=webpack:///./src/game_view.js?");

/***/ }),

/***/ "./src/index.js":
/*!**********************!*\
  !*** ./src/index.js ***!
  \**********************/
/***/ ((__unused_webpack_module, __unused_webpack_exports, __webpack_require__) => {

eval("console.log(\"Webpack is working\");\r\nconst MovingObject = __webpack_require__(/*! ./moving_object.js */ \"./src/moving_object.js\");\r\nconst Asteroid = __webpack_require__(/*! ./asteroid.js */ \"./src/asteroid.js\");\r\nconst GameView = __webpack_require__(/*! ./game_view.js */ \"./src/game_view.js\");\r\nconst Game = __webpack_require__(/*! ./game.js */ \"./src/game.js\");\r\n\r\n\r\ndocument.addEventListener(\"DOMContentLoaded\", () => {\r\n  const canvas = document.getElementById(\"game-canvas\");\r\n  const game = new Game(canvas);\r\n  const ctx = canvas.getContext(\"2d\");\r\n  const gameView = new GameView(ctx)\r\n  // ctx.fillStyle = \"red\";\r\n  // ctx.fillRect(10,10,40,30);\r\n  console.log(\"DOM fully loaded and parsed\");\r\n\r\n  const mo = new MovingObject({\r\n    pos: [30, 30],\r\n    vel: [10, 10],\r\n    radius: 5,\r\n    color: \"#00FF00\",\r\n  });\r\n\r\n  // const ast = new Asteroid({ pos: [30, 30] });\r\n\r\n  window.mo = mo;\r\n  window.ast = ast;\r\n  window.Game = Game;\r\n  window.GameView = GameView;\r\n  window.MovingObject = MovingObject;\r\n  window.Asteroid = Asteroid;\r\n  window.ctx = ctx;\r\n});\r\n\r\n// const canvas = document.getElementById('bird-game');\r\n// const game = new FlappyBird(canvas);\r\n// game.restart();\r\n// canvas.addEventListener(\"mousedown\", game.click.bind(game));\r\n\n\n//# sourceURL=webpack:///./src/index.js?");

/***/ }),

/***/ "./src/moving_object.js":
/*!******************************!*\
  !*** ./src/moving_object.js ***!
  \******************************/
/***/ ((module) => {

eval("// (pos, vel, radius, color)\nfunction MovingObject(options) {\n    // debugger/\n    this.pos    = options.pos;\n    this.x      = options.pos[0];\n    this.y      = options.pos[1];\n    this.vel    = options.vel;\n    this.xVel   = options.vel[0];\n    this.yVel   = options.vel[1];\n    this.radius = options.radius;\n    this.color  = options.color;\n}\n\nMovingObject.prototype.draw = function (ctx) {\n  ctx.fillStyle = this.color\n  ctx.beginPath()\n\n  ctx.arc(\n    this.x,\n    this.y,\n    this.radius,\n    0,\n    2 * Math.PI,\n    false\n  )\n  ctx.fill()\n}\n\nMovingObject.prototype.move = function () {\n  this.x += this.xVel\n  this.y += this.yVel\n}\n// const movingObjectTest = new MovingObject([0,0], [1,1], 5, 'red') \n\nmodule.exports = MovingObject;\n\n//# sourceURL=webpack:///./src/moving_object.js?");

/***/ }),

/***/ "./src/util.js":
/*!*********************!*\
  !*** ./src/util.js ***!
  \*********************/
/***/ ((module) => {

eval("const Util = {\r\n  inherits(childClass, parentClass) {\r\n    function Surrogate() {}\r\n    Surrogate.prototype = parentClass.prototype\r\n    childClass.prototype = new Surrogate()\r\n    childClass.prototype.constructor = childClass\r\n  },\r\n  randomVec(length) {\r\n    const deg = 2 * Math.PI * Math.random();\r\n    return Util.scale([Math.sin(deg), Math.cos(deg)], length);\r\n  },\r\n  // Scale the length of a vector by the given amount.\r\n  scale(vec, m) {\r\n    return [vec[0] * m, vec[1] * m];\r\n  }\r\n};\r\n\r\nmodule.exports = Util;\n\n//# sourceURL=webpack:///./src/util.js?");

/***/ })

/******/ 	});
/************************************************************************/
/******/ 	// The module cache
/******/ 	var __webpack_module_cache__ = {};
/******/ 	
/******/ 	// The require function
/******/ 	function __webpack_require__(moduleId) {
/******/ 		// Check if module is in cache
/******/ 		var cachedModule = __webpack_module_cache__[moduleId];
/******/ 		if (cachedModule !== undefined) {
/******/ 			return cachedModule.exports;
/******/ 		}
/******/ 		// Create a new module (and put it into the cache)
/******/ 		var module = __webpack_module_cache__[moduleId] = {
/******/ 			// no module.id needed
/******/ 			// no module.loaded needed
/******/ 			exports: {}
/******/ 		};
/******/ 	
/******/ 		// Execute the module function
/******/ 		__webpack_modules__[moduleId](module, module.exports, __webpack_require__);
/******/ 	
/******/ 		// Return the exports of the module
/******/ 		return module.exports;
/******/ 	}
/******/ 	
/************************************************************************/
/******/ 	
/******/ 	// startup
/******/ 	// Load entry module and return exports
/******/ 	// This entry module can't be inlined because the eval devtool is used.
/******/ 	var __webpack_exports__ = __webpack_require__("./src/index.js");
/******/ 	
/******/ })()
;