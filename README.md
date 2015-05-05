We are creating a Battleships game using TDD and OOD.

Here's our domain model:

Domain model
------------

Classes and methods:

 Ship
-----
   Sizes of ships
   Direction of ships (north/east/south/west)
   Ships cannot overlap each other
   Ships can fire from one board to another
   Be blown up
   Removed from board when blown up

Board
-----
   Logs locationsTwo people can play, they have a board each
   Hits and misses of their ships will be listed
   Players are told whether they won or lost
   Ships can only be placed within the board


We've reached the point where we need to introduce the board itself in a more concrete fashion. Some kind of array is likely to solve this, although we need to give thought to how the board 'stores' information on where the ships are placed and bombs are/have been dropped.

The question is, what kind of array? Would a hash be better? It's probably best to test using an array as far as possible as it seems the simplest solution, and refactor/scrap the lot if necessary.