# Brunch with Banana Pancakes

![](http://i.imgur.com/CXAc2.png)

Banana Pancakes is a [Brunch](http://brunch.io/) skeleton that utilizes [Bootstrap](http://twitter.github.com/bootstrap/), [Backbone](http://backbonejs.org/), [Handlebars](http://handlebarsjs.com/), and [LESS](http://lesscss.org/) / [SASS](http://sass-lang.com/). It also includes [Backbone.Mediator](https://github.com/chalbert/Backbone-Mediator) for Pub/Sub patterns.

## Getting started

Make sure to have [Brunch.io](http://brunch.io) installed.

Create your project using Banana Pancakes with:

	brunch new <your-project-name> -s github://Anaphase/brunch-banana-pancakes
		
Or simply copy the repository to your hard drive and rename it.

## Customize Bootstrap Stylesheets

All Bootstrap stylesheet files can be found separated into:

	vendor/styles/bootstrap
		
They're in original [LESS](http://lesscss.org/) format in order to be easily customized, and compiled together with the app build.

## Exclude Bootstrap jQuery plugins

jQuery plugins used by Bootstrap are all listed (in the right order) inside the config.coffee file. Comment out the ones you want to exclude from the build with a #. (Pay attention to dependencies!)

## Credit
Banana Pancakes was spawned from [Brunch with Eggs and Bacon](https://github.com/nezoomie/brunch-eggs-and-bacon) because it's versions of [jQuery](http://jquery.com/), [Underscore](http://underscorejs.org/), [Backbone](http://backbonejs.org/), and [Bootstrap](http://twitter.github.com/bootstrap/) were all out-of-date.