# Godot Engine Behaviour Tree Editor Plugin

A Behavior Tree implementation for the Godot Engine, written in pure GDScript.

This project is a Godot Engine addon that adds a collection of nodes to the editor that facilitate the implementation of Behavior Trees. It is released under the terms of the MIT License.

This is a fork from Jeff Olson (https://github.com/olsonjeffery/behv_godot), which is itself based on ideas/concepts from `quabug/godot_behavior_tree`.

# Installation

1. Clone this repository
2. Copy the `com.brandonlamb.bt` folder into your `res://addons` folder
3. In your project settings, enable the plugin

# Design philosophy

- Easy to use and reason about - just Behavior Trees!
- Unobtrusive - to integrate an existing workflow
  - the BT primitives are implemented as Nodes that get added directly onto a scene; Actions are just normal nodes that you extend with a script
  - Build out a tree and attach it to your actor/entity sprite and just call `.tick()` during `_process()` or `_fixed_process()`
  - Uses a simple `Dictionary` value as the context object
- Add add little as possible to Godot -
  - The system uses existing numeric constants (`OK`, `FAILED` and `ERR_BUSY`) as stand-ins for the existing "Success, Failure, Running" concepts in BT.
  - The entire thing is implemented as a pure-GDScript addon that can be easily added to a project without having to rebuild the Godot editor

** Node types
- `BehvRoot` Place this at the root of your tree at the AI/agent level. Accepts only a single child (probably some kind of composite)
- Composite Types:
  - `BehvSequence` - Runs a collection of child nodes, stopping at the first failure or `ERR_BUSY`
    - Will return and complete if any child returns `FAILED`, returning `FAILED`
    - Will return `OK` if all children return `OK`
    - Will return if any child returns `ERR_BUSY`. Will resume at the `ERR_BUSY`-returning child
  - `BehvSelector` - Runs a collection of child nodes, stopping at the first success or `ERR_BUSY`
    - Will return and complete if any child returns `OK`, returning `OK`
    - Will return `FAILED` if all children return `FAILED`
    - Will return if any child returns `ERR_BUSY`. Will resume at the `ERR_BUSY`-returning child
- Decorator Types:
  - Inverter
  - Succeeder
- Leaf Types
  - Action
  - Condition
