# Escoria 3.0

Libre framework for the creation of point-and-click adventure games with
the MIT-licensed multi-platform game engine [Godot Engine](https://godotengine.org).

**This version works with Godot 3.0.** For Godot 2.1, please check the https://github.com/godotengine/escoria/tree/2.1 branch.

*Escoria* consists of a set of scripts, template scenes and a dialogue
scripting language, which are all meant to be used within Godot Engine.

It takes advantage of the Godot features and editor, and is meant to be
usable by a team to make a game with little intervention from programmers.
It is designed so that you can claim it for yourself and modify it to match
the needs of your specific game and team.

## History

This framework was initially developed for the adventure game
[The Interactive Adventures of Dog Mendonça and Pizzaboy®](http://store.steampowered.com/app/330420)
and later streamlined for broader usages and open sourced as promised
to the backers of the Dog Mendonça Kickstarter campaign.

## Usage

Here be dragons.

Because Escoria is in development, it's sometimes hard to keep track of master
changes in a development branch without mudding the history with merges and other
noise. I try to keep the log fairly clean here, which means I rebase a lot and
sometimes squash eg. ProjectSettings.

This may lead to situations where something is configured in the branch
"before" it was implemented in the submodule. This may also mean that some
submodule-related commits point to code that doesn't belong to a relevant
branch anymore.

This kind of behavior from a developer is a fireable offence in working life,
for obvious reasons. Yet as an attempt to show the minimum workflow for an
Escoria game, it's a better demonstration than 1024 criss-crossing commits.

So look at the commit history but don't bother bisecting it ;)

To use https://github.com/mjtorn/escoria/tree/devel you want either

    $ git clone https://github.com/mjtorn/escoria/ --recurse-submodules

to view all the code, but you have to `git checkout -b devel origin/devel` to see where the money at.

Alternatively you can use

    $ git clone https://github.com/mjtorn/escoria/ --recurse-submodules -b devel

to get there by default.

(These instructions shall never be merged to the upstream master!)

## Documentation

This repository contains some basic documentation in the `doc` folder.

An extensive manual named [*Creating Point and Click Games with Escoria*](https://fr.flossmanuals.net/creating-point-and-click-games-with-escoria/)
was written during a booksprint by Ariel Manzur (@punto-), main developer of this framework,
and the [FLOSS Manuals francophone](https://fr.flossmanuals.net/) community.

## Demo

The great demo that goes with the FLOSS Manuals francophone manual linked above,
"Escoria in Daïza", is also [hosted on GitHub](https://github.com/flossmanualsfr/escoria).
It is released under the MIT license, and can thus be used as a way to kickstart
your experience with Escoria.

## Licensing

This framework (scripts, scenes) is distributed under the MIT license,
as described in the LICENSE.md file.

### Art credits

- [Dan Griffin-Hayes](http://dangriffinhayes.com) - Cartoon characters and objects vector pack,
License CC0, [distributed on OpenGameArt](http://opengameart.org/content/cartoon-characters-and-objects-vector-pack)
- [Clint Bellanger](http://clintbellanger.net) - Recycle items set, License CC BY 3.0,
[distributed on OpenGameArt](http://opengameart.org/content/recycle-items-set)
