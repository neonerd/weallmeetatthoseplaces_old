(function e(t,n,r){function s(o,u){if(!n[o]){if(!t[o]){var a=typeof require=="function"&&require;if(!u&&a)return a(o,!0);if(i)return i(o,!0);var f=new Error("Cannot find module '"+o+"'");throw f.code="MODULE_NOT_FOUND",f}var l=n[o]={exports:{}};t[o][0].call(l.exports,function(e){var n=t[o][1][e];return s(n?n:e)},l,l.exports,e,t,n,r)}return n[o].exports}var i=typeof require=="function"&&require;for(var o=0;o<r.length;o++)s(r[o]);return s})({1:[function(require,module,exports){

/*

Inits the game UI.
 */
module.exports = function(renderSettings) {
  var gameEl, mainEl, mapEl;
  console.log("-- CREATING UI");
  mainEl = document.getElementById('main');
  gameEl = document.createElement('div');
  gameEl.className = "game";
  mainEl.appendChild(gameEl);
  mapEl = document.createElement('div');
  mapEl.className = "map";
  mapEl.id = "map";
  mapEl.style.width = renderSettings.tileSize * renderSettings.mapX + 'px';
  mapEl.style.height = renderSettings.tileSize * renderSettings.mapY + 'px';
  gameEl.appendChild(mapEl);
  return {
    elements: {
      game: gameEl,
      map: mapEl
    }
  };
};


},{}],2:[function(require,module,exports){
var gameSettings, ui;

console.log("hello world");

gameSettings = {
  tileSize: 48,
  mapX: 20,
  mapY: 14
};

ui = require('./init/ui.coffee')(gameSettings);


},{"./init/ui.coffee":1}]},{},[2]);
