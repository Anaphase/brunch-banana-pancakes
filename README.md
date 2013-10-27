# Brunch with Banana Pancakes

![](http://i.imgur.com/CXAc2.png)

Banana Pancakes is a [Brunch](http://brunch.io/) skeleton that utilizes [Bootstrap](http://getbootstrap.com/), [Backbone](http://backbonejs.org/), [Handlebars](http://handlebarsjs.com/), and [LESS](http://lesscss.org/) / [SASS](http://sass-lang.com/). It also includes [Backbone.Mediator](https://github.com/chalbert/Backbone-Mediator) for Pub/Sub patterns.

## Installation
Create your project using Banana Pancakes with `brunch new github:Anaphase/brunch-banana-pancakes <your-project-name>`.

Or simply copy the repository to your hard drive and rename it.

## Getting started

* Install (if you don't have them):
    * [Node.js](http://nodejs.org): `brew install node` on OS X
    * [Brunch](http://brunch.io): `npm install -g brunch`
    * [Bower](http://bower.io): `npm install -g bower`
    * Brunch plugins and Bower dependencies: `npm install & bower install`.
* Run:
    * `brunch watch --server` — watches the project with continuous rebuild. This will also launch HTTP server with [pushState](https://developer.mozilla.org/en-US/docs/Web/Guide/API/DOM/Manipulating_the_browser_history).
    * `brunch build --production` — builds minified project for production
* Learn:
    * `public/` dir is fully auto-generated and served by HTTP server.  Write your code in `app/` dir.
    * Place static files you want to be copied from `app/assets/` to `public/`.
    * [Brunch site](http://brunch.io), [Backbone site](http://backbonejs.org/)

## Customize Bootstrap Stylesheets

All Bootstrap stylesheet files can be found separated into:

	vendor/styles/bootstrap
		
They're in original [LESS](http://lesscss.org/) format in order to be easily customized, and compiled together with the app build.

## Exclude Bootstrap jQuery plugins

jQuery plugins used by Bootstrap are all listed (in the right order) inside the config.coffee file. Comment out the ones you want to exclude from the build with a #. (Pay attention to dependencies!)

## Credit
Banana Pancakes was spawned from [Brunch with Eggs and Bacon](https://github.com/nezoomie/brunch-eggs-and-bacon) because it's versions of [jQuery](http://jquery.com/), [Underscore](http://underscorejs.org/), [Backbone](http://backbonejs.org/), and [Bootstrap](http://getbootstrap.com/) were all out-of-date.
