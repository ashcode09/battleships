We are creating a Battleships game using TDD and OOD.

Domain model
------------

Classes and methods:

 Ship
   Sizes of ships
   Direction of ships (north/east/south/west)
   Ships cannot overlap each other
   Ships can fire from one board to another
   Be blown up
   Removed from board when blown up
 Board
   Logs locations
   Two people can play, they have a board each
   Hits and misses of their ships will be listed
   Players are told whether they won or lost

Not sure for now
   *Ships can only be placed within the board


Board - array/hash?