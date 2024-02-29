*WORK IN PROGRESS*

Armarius is a framework for dynamic story-telling in videogames based on the concept of storylets.

In short: a storylet is piece of narrative (think of it as a paragraph) that can be parameterized, used, and perhaps re-used, over the course of a game. If managed by an intelligent selection system, they can give rise to emergent gameplay and stories.

A storylet is composed of three parts:
* The outputs (or content)
* The inputs (or triggers)
* And some additional conditions on the inputs.

The outputs can be text (imagine the outcome of a decision) but they could potentially be any media. The inputs are _other storylets_ and game system inputs. Since storylets are connected to each other via their inputs and outputs, they form a directed (possibly cyclic) graph.

And any path in this graph is a possible story!

Armarius, as a framework, consists of two things:

* A compiler: which will parse a tree of Markdown files, each with embedded directives in a domain-specific language, and obtain a bunch of storylet definitions.

* A runtime system: a component that can be queried from a game engine to obtain storylets given the current state of the game and the narrative.
