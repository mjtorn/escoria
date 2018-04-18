# Hotspots and exits

Hotspots in Escoria are thought of as "things a character can walk on", either
like opening a door in Prince of Persia by stepping on a plate or a more abstract
"To street" exit hotspot.

Inert items, things that are "hotspots for the mouse" but not to be walked on, should
be implemented using `item.gd`.

Although hotspots and exits can be attached to any type of `Node`,
not every case works properly.

The working cases are described here.

Exit is extended from hotspot. To make gameplay quicker and "more modern", hotspot
implements double-clicking, which therefore works in exit as well.

## Concerning the player

Your player character must be a `KinematicBody2D` in order to work with hotspots
and exits.

If you refer to an old documentation that claims otherwise, and don't make it a
`KinematicBody2D`, Godot will complain. So before you start, remember this.

Also bear in mind that your player will need a `CollisionShape2D` or such to
collide with the hotspots and exits.

## Hotspots

Hotspots are `Area2D`, with the required `CollisionPolygon2D` child and optionally also
a `Sprite`) child. You may name them freely.

The `hotspot.gd` script must be attached to the `Area2D`.

The hotspots react only on the player character.

Note that you will have to create an ESC script with `:enter` and `:exit`
which are triggered when the player enters or exits the `Area2D`.

## Exits

Exits can have the same node structure as a hotspot or be `TextureRect`s. Be warned that
`TextureRect` support may be dropped in the near future. 

The `exit.gd` script must be attached to either the `Area2D` or `TextureRect`.

Because exits are meant for changing scenes, the event keyword is `:exit_scene` to avoid
confusion with hotspots.

An example of this would be

```
:exit_scene
set last_exit bridge
change_scene res://game/rooms/office/main.tscn
```

