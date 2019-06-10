# 247 Solver
The game 247 is played as follows:
* The first player says "2, 4, 7".
* The next player makes a move by subtracting 1 or more from one of these
  numbers, potentially eliminating one of the numbers.
* Players take turns repeating this step until someone is forced to eliminate
  the last remaining number. The player who does this loses.

Assuming both players play optimally, every game state is either a winning or
losing move.
For example, the player who says "1" must win, as this forces the
other player to eliminate the number.
This solver brute forces the game to tell you whether a game state wins or
loses.

If `x` is a winning state (meaning the player who says it will win),
then `defeat x` will return `None` indicating `x` can't be defeated.
If `x` is a losing state, `defeat x` will return `Some y`, where `y` is a move
one can make to defeat state `x`.
