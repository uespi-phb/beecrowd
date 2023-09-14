import 'dart:io';

void main() {
  int count = readLineAsInt();

  while (count-- > 0) {
    var line = stdin.readLineSync()!.split(' ');
    int n1 = int.parse(line[0]);
    int n2 = int.parse(line[1]);

    print(mdc(n1, n2));
  }
}

int readLineAsInt() {
  return int.parse(stdin.readLineSync() ?? '0');
}

int mdc(int a, int b) {
  while (a != b) {
    if (a < b) {
      (a, b) = (b, a);
    } else {
      a = a - b;
    }
  }
  return a;
}

int mdcr(int a, int b) {
  if (a < b) {
    return mdcr(b, a);
  } else if (a > b) {
    return mdcr(a - b, b);
  }
  return a;
}
