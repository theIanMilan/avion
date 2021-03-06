## Live App
View the [live app.](https://theianmilan.github.io/avion/Avion%20Projects/Adjacent%20Artists/index.html)

## Introduction

Adjacent Artists is a web app that allows users to key in their favorite artist (or movie, TV show, podcast, or game) and receive suggestions on other similar-sounding artists, or *"Adjacent Artists"*. Cards of suggestions are generated through calling TasteDive's API and displays a YouTube video and accompanying Wikipedia snippet to allow users to browse all in one page. 

Adjacent Artists seeks to help users discover other similar media based on what users already like and tries to make the discovery process feel more *organic* and convenient at the same time.

## Features
* Discover similar media based on your favorite music, movie, TV show, podcast, or game
* Get a selected YouTube video to play on the page
* Get a quick snippet of the media's Wikipedia bio

## Project Background

This project was built to learn about Asynchronus JavaScript: Promises, Async/Await and AJAX. In the course of development, as I integrated the TasteDive API with my app, I kept on getting Access-Control-Allow-Origin Header errors. This led me to discover that since I was trying to access data in another domain (*cross-domain*), I couldn't access data unless TasteDive's servers recognized my own website and set this as part of their `Access-Control-Allow-Origin header`.

Luckily, TasteDive's API had a callback parameter to allow the use of JSONP. This essentially means that I can bypass the above header issue by injecting a script that asks for the JSON data from TasteDive and receive it wrapped in a function. A big limitation with this method, however, is that there is no way to get HTTP error codes. As such, no notifications are built in the app when the JSON data isn't retrieved or retrieval encounters an error.

## Screenshot and Demo

<p float = 'left'>
    <img src="https://github.com/theIanMilan/avion/blob/main/Avion%20Projects/Adjacent%20Artists/assets/images/adjacent_artists_gif.gif" alt="App Demo" width="500" height="300">
    <p>App Demo</p>

<br>
    <img src="https://github.com/theIanMilan/avion/blob/main/Avion%20Projects/Adjacent%20Artists/assets/images/android_app_screenshot.jpg" alt="App on Android" width="268" height="500">
    <span>Android App Screenshot</span>
</p>

## Technologies

* HTML5
* JavaScript ES6
* CSS3
* [TasteDive API](https://tastedive.com/read/api)

## Assets
* Icons by [feathericons](https://feathericons.com/) and [fontawesome](https://fontawesome.com/)
* Logo made with [Canva](https://www.canva.com/)
