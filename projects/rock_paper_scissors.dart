import 'dart:io';
import 'dart:math';

enum Move { rock, paper, scissors }

void main() {
  final rnd = Random();
  const inputMap = {'r': Move.rock, 'p': Move.paper, 's': Move.scissors};

  while (true) {
    stdout.write('Rock, Paper, or Scissors? (r/p/s, q to quit): ');
    final input = stdin.readLineSync()?.toLowerCase();

    if (input == 'q') break;

    final playerMove = inputMap[input];
    if (playerMove == null) {
      print('Invalid input, please choose r, p, or s.');
      continue;
    }

    final computerMove = Move.values[rnd.nextInt(3)];
    print('You: $playerMove | Computer: $computerMove');

    if (playerMove == computerMove) {
      print('It\'s a tie!');
    } else if ((playerMove == Move.rock && computerMove == Move.scissors) ||
        (playerMove == Move.paper && computerMove == Move.rock) ||
        (playerMove == Move.scissors && computerMove == Move.paper)) {
      print('You win!');
    } else {
      print('You lose!');
    }
  }
}
