## Live Demo
View the [live app.](https://theianmilan.github.io/avion/Avion%20Projects/Tic-Tac-Toe/index.html)

## Introduction

This is a simple Tic-Tac-Toe project that can be played against another player or an AI (random or impossible). It also includes extra features such as a bigger grid size and optional emoji player and opponent marks. 

## Features
* Play Tic-Tac-Toe against another Player or AI
* AI difficulty includes random or impossible
* Minimax algorithm implemented on AI for impossible difficulty
* Choose from grid sizes of 3x3, 5x5, or 7x7
* Emoji-enabled player and opponent marks (instead of the usual X's or O's)
* Move walkthrough available at end of game through previous/next buttons

## Demo

<p float = 'left'>
    <img src="Avion Projects/Tic-Tac-Toe/assets/tictactoe_gif.gif" alt="App Demo" width="500" height="300">
    <span>App Demo</span>
</p>

## Project Background

This project was built to learn about two-dimensional arrays in JavaScript and traversing the DOM.

In creating the project, I chose to add a click event listener on each grid instead of adding or removing classes to change the grid state. When clicked, I would remove this event listener and adjust the grid element's properties.

I was also able to implement an AI with two difficulties: random and impossible:
* Random was straight-forward - I only had to obtain a nodelist of all unmarked grids and randomly chose an index to mark.
* Impossible was implemented through a minimax algorithm. The algorithm essentially tests all possible move sets and chooses the optimal move, i.e. the move that gives the best advantage to the current player. Admittedly, I had difficulty in implementing my own code for the algorithm and had to consult other people's code.

## Technologies

* HTML5
* JavaScript ES6
* CSS3

## Assets
* Icons by [feathericons](https://feathericons.com/)
* Moving Background based on design by rémi and code by Thibaud Goiffon