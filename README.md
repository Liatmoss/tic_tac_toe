# Tic Tac Toe

## The rules of tic-tac-toe are as follows:

- There are two players in the game (X and O)
- Players take turns until the game is over
- A player can claim a field if it is not already taken
- A turn ends when a player claims a field
- A player wins if they claim all the fields in a row, column or diagonal
- A game is over if a player wins
- A game is over when all fields are taken

### The brief:

Build the business logic for a game of tic tac toe. It should be easy to implement a working game of tic tac toe by combining your code with any user interface, whether web or command line.

### To run the program/tests:
1. Install gems using 'bundle install'
2. Use 'rspec' to run tests with SimpleCov checking the coverage - coverage should be higher than 95%
3. If all tests pass, run 'rubocop' to check the readability of code


### How code is structured
- Code is structured in two classes
- Game class controls the players turns and where they place their pieces on the board
- Calculation class iterates through the array after each turn with the check method
