import 'dart:io';

void main() {
  const black = 0;
  const white = 1;

  int lines = int.parse(stdin.readLineSync()!);
  int cols = int.parse(stdin.readLineSync()!);

  int color = odd(lines)
      ? odd(cols)
          ? white
          : black
      : odd(cols)
          ? black
          : white;

  /*
  if (odd(lines)) {
    if (odd(cols)) {
      color = white;
    } else {
      color = black;
    }
  } else {
    if (odd(cols)) {
      color = black;
    } else {
      color = white;
    }
  }
  */
  print(color);
}

bool odd(int n) {
  return n % 2 == 1;
}
